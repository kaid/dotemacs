(setq erlang-root-dir "/usr/local/lib/erlang/")
(add-to-list 'exec-path "/usr/local/lib/erlang/bin")
(setq erlang-man-root-dir "/opt/local/lib/erlang/man")

(defun my-erlang-mode-hook ()
  (let ((hostname (concat "emacs@" (erl-determine-hostname))))
    (setq inferior-erlang-machine-options `("-name" ,hostname))
    (setq erlang-indent-level 2)
    (local-set-key [return] 'newline-and-indent)
    (setq erl-nodename-cache
          (make-symbol hostname))))

;; Some Erlang customizations
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

(add-to-list 'auto-mode-alist '(".*\\.app\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '(".*app\\.src\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '(".*\\.config\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '(".*\\.rel\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '(".*\\.script\\'" . erlang-mode))

(require 'erlang-flymake)
