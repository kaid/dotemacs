(set-language-environment "utf-8")

(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' 'exec-path' and PATH environment variable to match that used by the user's shell. This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell
         (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")
(setq tramp-verbose 10)

(defvar emacs-dir "~/.emacs.d/"
  "Root of emacs configuration")

(defvar preferences-dir (concat emacs-dir "preferences/")
  "Directory where all preferences goes")

(add-to-list 'load-path preferences-dir)

(require 'pref-appearance)
(require 'pref-el-get)
(require 'pref-defaults)

;; ;; Helm mode settings
;; ;; (helm-mini)
;; ;; (require 'helm-misc)
;; ;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; ;; (require 'helm-config)
;; ;; (require 'helm-projectile)


;; ;; On OS X Emacs doesn't use the shell PATH if it's not started from
;; ;; the shell.
;; ;; If you're using homebrew or port, modifying the PATH is essential.
;; (let (osx-paths)
;;   (dolist (path
;; 	   '("/usr/local/bin"
;; 	     "/opt/local/bin"
;; 	     "/opt/local/sbin")
;; 	   (setenv "PATH" (concat osx-paths (getenv "PATH"))))
;;     (push path exec-path)
;;     (setq osx-paths (concat (concat path ":") osx-paths))))


;; ;; Emacs users obviously have little need for Command and Option keys,
;; ;; but they do need Meta and Super
;; (setq mac-command-modifier 'super)

;; (setq mac-option-modifier 'meta)

;; ;;(provide 'prelude-osx)

;; ;; bla
;; (fset 'replace-ctrlms
;;    [escape ?< escape ?% ?\C-q ?\C-m return ?\C-q ?\C-j return ?!])
;; (global-set-key "\C-cm" 'replace-ctrlms)
(put 'upcase-region 'disabled nil)
