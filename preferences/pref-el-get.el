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

				(:name ruby-electric
							 :type        git
							 :url         "git://github.com/qoobaa/ruby-electric.git"
							 :features    ruby-electric)
        (:name livescript-mode
               :type        git
               :url         "git://github.com/yhisamatsu/livescript-mode.git"
               :features    livescript-mode)))

(setq prerequisite-libraries
      (append (mapcar 'el-get-source-name el-get-sources)
              '(autopair    haml-mode  slim-mode paredit
                slime       powerline  magit     ruby-electric
                coffee-mode helm       ac-slime  auto-complete
								quack       ghc-mod    scion     haskell-mode
                clang-completion-mode  google-c-style)))

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
