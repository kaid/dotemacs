;; Ruby block mode settings
(defun load-rblock()
  (if (equal "ruby-mode" (with-current-buffer (current-buffer) major-mode))
      (ruby-block-mode 1)
    (ruby-block-mode -1)))

(add-hook 'after-change-major-mode-hook 'load-rblock)
