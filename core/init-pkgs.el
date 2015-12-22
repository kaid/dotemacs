(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package lispy :ensure t)
(use-package autopair :ensure t)
(use-package magit :ensure t)

(use-package evil
  :ensure t
  :config (evil-mode t))

(use-package evil-surround :ensure t)
(use-package evil-jumper :ensure t)
(use-package evil-magit :ensure t)

(use-package evil-leader
  :ensure t
  :config (global-evil-leader-mode))

(use-package evil-org :ensure t)
(use-package ruby-tools :ensure t)
(use-package ruby-electric :ensure t)
(use-package flycheck :ensure t)
(use-package smartparens :ensure t)
(use-package cl-lib :ensure t)

(use-package projectile
  :ensure t
  :config (projectile-global-mode))

(use-package tramp :ensure t)

(use-package auto-complete
  :ensure t
  :config (progn
            (require 'auto-complete-config)
            (ac-config-default)
            (global-auto-complete-mode t)))

(use-package js2-mode :ensure t)
(use-package json-mode :ensure t)
(use-package json-reformat :ensure t)
(use-package powerline :ensure t)
(use-package web-mode :ensure t)

(use-package swiper
  :ensure t
  :config (progn
            (ivy-mode 1)
            (setq ivy-use-virtual-buffers t)
            (setq projectile-completion-system 'ivy)))

(provide 'init-pkgs)
