(require 'auto-complete-distel)

(defun ac-distel-setup ()
  (setq ac-sources '(ac-source-distel))
  (auto-complete-mode 1))

(add-hook 'erlang-mode-hook 'ac-distel-setup)
(add-hook 'erlang-shell-mode-hook 'ac-distel-setup)
