
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/core")

(require 'vars)
(require 'utils)
(require 'init-pkgs)
(require 'auto-modes)
(require 'hooks)
(require 'modeline)
(require 'key-bindings)
(require 'preferences)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-boot-parameters "cider repl -s wait")
 '(package-selected-packages
   (quote
    (web-mode use-package ruby-tools ruby-electric projectile powerline lispy json-mode js2-mode flycheck-pos-tip flycheck-clojure evil-surround evil-smartparens evil-org evil-magit evil-jumper ensime counsel clj-refactor auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
