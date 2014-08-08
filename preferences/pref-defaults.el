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

;; Ruby Mode Config
(add-hook 'ruby-mode-hook
          (lambda ()
            (setq mode-name "rb")
            (setq ruby-insert-encoding-magic-comment nil)
            (flycheck-mode 1)))

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; JS Mode Config
(add-hook 'js-mode-hook
          (lambda ()
            (smartparens-mode 1)
            (flycheck-mode 1)))

(setq js-indent-level 2)

(add-to-list 'auto-mode-alist '("\\.bowerrc$" . json-mode))
(add-to-list 'auto-mode-alist '("\\.jshintrc$" . json-mode))

;; Comment/Uncomment region
(global-set-key "\C-c\c" 'comment-or-uncomment-region)

(provide 'pref-defaults)
