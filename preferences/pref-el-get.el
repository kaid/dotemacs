;; El get settings
(add-to-list 'load-path "~/.emacs.d/vendor/el-get/")

(setq el-get-dir "~/.emacs.d/vendor/")

(setq el-get-user-package-directory (concat preferences-dir "packages/"))

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

(setq el-get-sources
      '((:name livescript-mode
               :website     "https://github.com/tensai-cirno/livescript-mode"
               :description "emacs livescript mode"
               :type        github
               :pkgname     "tensai-cirno/livescript-mode"
               :features    livescript-mode)))

(setq prerequisite-libraries
      (append '(autopair    diminish haml-mode  slim-mode
                ruby-mode   ruby-end ruby-block slime
                coffee-mode helm     scss-mode  paredit
                powerline)
              (mapcar 'el-get-source-name el-get-sources)))

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
