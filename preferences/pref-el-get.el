;; El get settings
(add-to-list 'load-path "~/.emacs.d/vendor/el-get/")

(setq el-get-dir "~/.emacs.d/vendor/")

(setq el-get-user-package-directory (concat preferences-dir "packages/"))

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch el-get-install-skip-emacswiki-recipes)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

(setq el-get-sources
      '((:name paredit
               :description "Minor mode for editing parentheses"
               :type        git
               :url         "git://github.com/emacsmirror/paredit.git"
               :features    paredit)
        (:name Enhanced-Ruby-Mode
               :type        git
               :url         "git://github.com/jacott/Enhanced-Ruby-Mode.git"
               :features    ruby-mode)
				(:name ruby-end
							 :type        git
							 :url         "git://github.com/rejeep/ruby-end.git"
							 :features    ruby-end)
        (:name livescript-mode
               :type        git
               :url         "git://github.com/bdowning/livescript-mode.git"
               :features    livescript-mode)
        (:name erlang-mode
               :description "Major modes for editing and running Erlang"
               :type        git
               :url         "git://github.com/emacsmirror/erlang.git"
               :load        "erlang-start.el")
        (:name auto-complete-distel
               :type        git
               :url         "git://github.com/rost/auto-complete-distel.git"
               :depends     (auto-complete)
               :features    auto-complete-distel)
        (:name elixir-mode
               :type        git
               :url         "git://github.com/elixir-lang/emacs-elixir"
               :features    elixir-mode
               :load        "elixir-mode-setup.el")))

(setq prerequisite-libraries
      (append (mapcar 'el-get-source-name el-get-sources)
              '(autopair    haml-mode  slim-mode paredit
                slime       powerline  magit     ruby-end
                coffee-mode helm       ac-slime  auto-complete
								quack       ghc-mod    scion     haskell-mode
                clang-completion-mode  google-c-style
                distel))) ;haskell-interactive-mode

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
