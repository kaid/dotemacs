(require 'web-mode)
(add-hook 'html-mode-hook
          (lambda ()
            (web-mode t)))
(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)))
