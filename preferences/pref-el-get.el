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
               :type        github
               :pkgnamea    "emacsmirror/paredit"
               :features    paredit)
        (:name livescript-mode
               :type        github
               :pkgname     "bdowning/livescript-mode"
               :features    livescript-mode)
        (:name fiplr
               :type        github
               :pkgname     "d11wtq/fiplr"
               :depends     (grizzl)
               :features    fiplr)
        (:name elixir-mode
               :type        github
               :pkgname     "elixir-lang/emacs-elixir"
               :features    elixir-mode
               :load        "elixir-mode.el")))

(setq prerequisite-libraries
      (append (mapcar 'el-get-source-name el-get-sources)
              '(autopair    haml-mode slim-mode     erlware-mode
                emacs-powerline       magit         scala-mode2
                clang-completion-mode hi2           structured-haskell-mode
                coffee-mode helm      auto-complete ensime
                ghc-mod     scion     ruby-electric markdown-mode
                evil        edts      haskell-mode  projectile    
                haskell-mode-exts     helm-haskell-import
                s           cl-lib    tramp         helm
                helm-cmd-t  evil-surround           smartparens
                cedit       json-mode json-reformat flycheck
                go-mode     go-autocomplete         multiple-cursors
                ruby-tools  web-mode  go-projectile)))

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
