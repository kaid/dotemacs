;; El get settings
(add-to-list 'load-path "~/.emacs.d/vendor/el-get/")

(setq el-get-dir "~/.emacs.d/vendor/")

(setq el-get-user-package-directory (concat preferences-dir "packages/"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq el-get-sources
      '((:name paredit
               :description "Minor mode for editing parentheses"
               :type        git
               :url         "git://github.com/emacsmirror/paredit.git"
               :features    paredit)
        (:name livescript-mode
               :type        git
               :url         "git://github.com/bdowning/livescript-mode.git"
               :features    livescript-mode)
        (:name powerline
               :website     "https://github.com/Dewdrops/powerline"
               :depends     (cl-lib)
               :description "Powerline for Emacs"
               :type        github
               :pkgname     "Dewdrops/powerline"
               :load-path   "."
               :features powerline)
        (:name elixir-mode
               :type        git
               :url         "git://github.com/elixir-lang/emacs-elixir"
               :features    elixir-mode
               :load        "elixir-mode.el")))

(setq prerequisite-libraries
      (append (mapcar 'el-get-source-name el-get-sources)
              '(autopair    haml-mode slim-mode     erlware-mode
                powerline   magit     scala-mode2   clang-completion-mode
                coffee-mode helm      auto-complete ensime
                ghc-mod     scion     ruby-electric markdown-mode
                evil        edts      tern          haskell-mode
                robe-mode   haskell-mode-exts       helm-haskell-import
                shime       structured-haskell-mode hi2
                s           cl-lib    tramp         helm
                helm-cmd-t  evil-surround           init-paredit
                cedit)))

(defcustom el-get-recipes-dir
  "~/.emacs.d/recipes/"
  "Define where to keep remote and local recipes"
  :group 'el-get
  :type  'directory)

(setq el-get-recipe-path-emacswiki
      (concat el-get-recipes-dir "emacswiki/"))

(setq el-get-recipe-path-elpa
      (concat el-get-recipes-dir "elpa/"))

(el-get 'sync prerequisite-libraries)

(provide 'pref-el-get)
