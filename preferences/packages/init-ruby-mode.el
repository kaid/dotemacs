;; Ruby mode settings
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (ruby-block-mode 1)
	    (ruby-end-mode   1)))
