(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.htm$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (smartparens-mode 1)))

(setq web-mode-markup-indent-offset 2)
