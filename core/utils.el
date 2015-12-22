(defun auto-mode (patterns mode)
  (dolist (pattern patterns)
    (add-to-list 'auto-mode-alist (cons pattern mode))))

(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' 'exec-path' and PATH environment variable
   to match that used by the user's shell. This is particularly useful
   under Mac OSX, where GUI apps are not started from a shell."

  (interactive)
  (let ((path-from-shell
         (replace-regexp-in-string
          "[ \t\n]*$"
          ""
          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(defun projectile-H-t ()
  (interactive)
  (setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
  (unwind-protect
      (projectile-find-file)
    (setq ivy-re-builders-alist '((t . ivy--regex-plus)))))

(defun close-window ()
  (interactive)
  delete-window)

(defun string> (str1 str2)
  (string< str2 str1))

(provide 'utils)
