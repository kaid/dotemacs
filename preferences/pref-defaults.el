(prefer-coding-system 'utf-8)
(ido-mode 1)
(setq inferior-lisp-program "/usr/local/bin/ccl64 -K utf-8")
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq c-basic-offset 4)
(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-program "~/.rvm/bin/ruby")

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

;; Go to line
(global-set-key "\C-c\l" 'goto-line)

(provide 'pref-defaults)
