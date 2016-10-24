(set-language-environment "utf-8")

(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")
(setq tramp-verbose 10)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Indentation settings
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; Hide splash screen
(setq inhibit-splash-screen 1)

;; Font settings
(if (window-system)
    (set-face-attribute 'default nil :font "menlo-14")
  (set-default-font "menlo-14"))

;; Menu bar mode settings
(if (window-system)
    (menu-bar-mode 1)
  (menu-bar-mode -1))

;; Scroll bar mode settings
(scroll-bar-mode -1)

;; Tool bar mode settings
(tool-bar-mode -1)

;; Show parens mode settings
(show-paren-mode 1)

;; Chinese font
(if (display-graphic-p)
    (set-fontset-font
     (frame-parameter nil 'font)
     'han
     (font-spec :family "Hiragino Sans GB" )))

(prefer-coding-system 'utf-8)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq c-basic-offset 4)

(set-face-attribute 'region nil :background "#8af7ff" :foreground "#7ab6bb")
(set-cursor-color "#008eff")

(set-exec-path-from-shell-PATH)

(diminish 'javascript-mode "Js")

;; Temporary file storage
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/.save"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (nth 5 (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

(provide 'preferences)
