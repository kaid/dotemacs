(add-hook 'ruby-mode-hook
          (lambda ()
            (setq mode-name "rb")
            (setq ruby-insert-encoding-magic-comment nil)
            (ruby-electric-mode t)
            (flycheck-mode 1)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (lispy-mode 1)
            (setq mode-name "el")))

(add-hook 'ielm-mode-hook
          (lambda ()
            (lispy-mode 1)
            (setq mode-name "ielm")))

(add-hook 'js-mode-hook
          (lambda ()
            (smartparens-mode 1)
            (flycheck-mode 1)
            (setq js-indent-level 2)))

(add-hook 'json-mode-hook
          (lambda ()
            (lispy-mode -1)
            (smartparens-mode 1)))

(add-hook 'css-mode-hook
          (lambda ()
            (smartparens-mode 1)))

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)
            (smartparens-mode 1)))

(add-hook 'yaml-mode-hook
          (lambda ()
            (smartparens-mode 1)))

(add-hook 'scala-mode-hook
          (lambda ()
            (smartparens-mode 1)
            (ensime-scala-mode-hook)))

(add-hook 'sbt-mode-hook
          (lambda ()
            (setq compilation-skip-threshold 1)))

(provide 'hooks)
