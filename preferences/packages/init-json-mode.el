(add-hook 'json-mode-hook (lambda ()
                            (paredit-mode -1)
                            (smartparens-mode 1)))

(add-to-list 'auto-mode-alist '("\\.bowerrc$" . json-mode))
(add-to-list 'auto-mode-alist '("\\.jshintrc$" . json-mode))
