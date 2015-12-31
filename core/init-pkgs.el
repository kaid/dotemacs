(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package lispy
  :diminish ""
  :ensure t)

(use-package magit :ensure t)

(use-package evil
  :ensure t
  :config (progn
            (evil-mode t)
            (diminish 'undo-tree-mode)))

(use-package evil-surround
  :ensure t
  :config (global-evil-surround-mode 1))

(use-package evil-smartparens :ensure t)
(use-package evil-jumper :ensure t)
(use-package evil-magit :ensure t)
(use-package evil-org :ensure t)

(use-package evil-leader
  :ensure t
  :config (global-evil-leader-mode 1))

(use-package ruby-tools :ensure t)
(use-package ruby-electric :ensure t)

(use-package flycheck
  :diminish ""
  :ensure t)

(use-package cl-lib :ensure t)

(use-package projectile
  :diminish ""
  :ensure t
  :config (projectile-global-mode))

(use-package tramp :ensure t)

(use-package company
  :diminish ""
  :ensure t
  :config (global-company-mode t))

(use-package js2-mode :ensure t)
(use-package json-mode :ensure t)
(use-package json-reformat :ensure t)
(use-package powerline :ensure t)
(use-package web-mode :ensure t)

(use-package swiper
  :ensure t
  :config (progn
            (ivy-mode 1)
            (diminish 'ivy-mode)
            (setq ivy-use-virtual-buffers t)
            (setq ivy-extra-directories nil)
            (add-to-list 'ivy-sort-functions-alist '(t . string>))
            (setq projectile-completion-system 'ivy)))

(use-package counsel :ensure t)
(use-package multiple-cursors :ensure t)
(use-package scala-mode2 :ensure t)

(use-package ensime :ensure t)
(use-package sbt-mode :ensure t)

(provide 'init-pkgs)
