(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)
(setq mac-right-command-modifier 'super)

(windmove-default-keybindings 'super)

(global-set-key [(super w)] 'windmove-up)
(global-set-key [(super s)] 'windmove-down)
(global-set-key [(super a)] 'windmove-left)
(global-set-key [(super d)] 'windmove-right)

(global-set-key [(ctrl c) (w)] 'backward-kill-word)
(global-set-key [(ctrl c) (i)] 'indent-region)
(global-set-key [(ctrl c) (c)] 'comment-or-uncomment-region)

(global-set-key [(ctrl s)] 'swiper)

(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)] 'close-window)
(global-set-key [(hyper z)] 'undo)
(global-set-key [(hyper t)] 'projectile-H-t)
(global-set-key [(hyper m)] 'magit-status)

(define-key emacs-lisp-mode-map [(ctrl c) (v)] 'eval-buffer)

(provide 'key-bindings)
