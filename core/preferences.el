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


;; Mode line settings

;; Chinese font
(if (display-graphic-p)
    (set-fontset-font
     (frame-parameter nil 'font)
     'han
     (font-spec :family "Hiragino Sans GB" )))


(prefer-coding-system 'utf-8)
(ido-mode 1)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq c-basic-offset 4)

;; Key bindings
(define-key emacs-lisp-mode-map (kbd "C-c v") 'eval-buffer)

;; Set super key
(setq mac-right-command-modifier 'super)

;; Winner mode
(windmove-default-keybindings 'super)

;; Swap M-x to C-c C-m
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Backward kill word
(global-set-key "\C-c\w" 'backward-kill-word)

;; Indent region
(global-set-key "\C-c\i" 'indent-region)

;; Comment/Uncomment region
(global-set-key "\C-c\c" 'comment-or-uncomment-region)

(set-exec-path-from-shell-PATH)

(provide 'preferences)
