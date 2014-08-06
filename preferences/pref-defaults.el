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

(provide 'pref-defaults)
