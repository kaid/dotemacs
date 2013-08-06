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

(defvar vendor-dir (concat emacs-dir "vendor/")
  "Directory where all packages goes")

(add-to-list 'load-path preferences-dir)

(require 'package)
(package-initialize)

(require 'pref-appearance)
(require 'pref-el-get)
(require 'pref-defaults)
