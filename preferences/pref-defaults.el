(ido-mode 1)
(ruby-block-mode -1)
(setq inferior-lisp-program "/usr/local/bin/ccl64 -K utf-8")

;; Key bindings
(define-key emacs-lisp-mode-map (kbd "C-c v") 'eval-buffer)

(provide 'pref-defaults)
