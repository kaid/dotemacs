;; Indentation settings
(setq-default indent-tabs-mode nil)
(setq tab-width 2)


;; Hide splash screen
(setq inhibit-splash-screen 1)


;; Font settings
(if (window-system)
    (set-face-attribute 'default nil :font "menlo-14")
  (set-default-font "menlo-14"))


;; Menu bar mode settings
(if (window-system)
    (menu-bar-mode 1)
  (menu-bar-mode -1))


;; Scroll bar mode settings
(scroll-bar-mode -1)


;; Tool bar mode settings
(tool-bar-mode -1)


;; Show parens mode settings
(show-paren-mode 1)


;; Mode line settings
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (setq mode-name "el")))

(add-hook 'ruby-mode-hook
	  (lambda ()
	    (setq mode-name "rb")))


(provide 'pref-appearance)
