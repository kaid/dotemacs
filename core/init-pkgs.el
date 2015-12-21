(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package paredit :ensure t)
(use-package autopair :ensure t)
(use-package magit :ensure t)

(use-package evil
  :ensure t
  :config (evil-mode t))

(use-package evil-surround :ensure t)
(use-package ruby-tools :ensure t)
(use-package ruby-electric :ensure t)
(use-package flycheck :ensure t)
(use-package smartparens :ensure t)
(use-package cl-lib :ensure t)
(use-package projectile :ensure t)
(use-package tramp :ensure t)

(use-package auto-complete
  :ensure t
  :config (progn
            (require 'auto-complete-config)
            (ac-config-default)
            (global-auto-complete-mode t)))

(use-package helm :ensure t)
(use-package helm-projectile
  :ensure t
  :config (global-set-key (kbd "M-t") 'helm-projectile))

(use-package js2-mode :ensure t)
(use-package json-mode :ensure t)
(use-package json-reformat :ensure t)
(use-package icicles :ensure t)
(use-package powerline :ensure t)
(use-package web-mode :ensure t)

(provide 'init-pkgs)
