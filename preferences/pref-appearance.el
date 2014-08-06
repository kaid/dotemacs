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

;; Ruby Mode hook
(add-hook 'ruby-mode-hook
          (lambda ()
            (setq mode-name "rb")))

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; JS Mode hook
(add-hook 'js-mode-hook
          (lambda ()
            (smartparens-mode 1)
            (flycheck-mode 1)))

;; Chinese font
(if (display-graphic-p)
    (set-fontset-font
     (frame-parameter nil 'font)
     'han
     (font-spec :family "Hiragino Sans GB" )))


(provide 'pref-appearance)
