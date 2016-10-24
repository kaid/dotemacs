(auto-mode
 '("\\.rake$" "\\.gemspec$" "\\.ru$" "Rakefile$" "Gemfile$" "Guardfile$")
 'ruby-mode)

(auto-mode
 '("\\.scss$" "\\.styl$" "\\.less$")
 'css-mode)

(auto-mode
 '("\\.eslintrc$" "\\.babelrc")
 'json-mode)

(auto-mode
 '("\\.html$" "\\.html$" "\\.erb$")
 'web-mode)

(auto-mode
 '("\\.js$" "\\.jsx$")
 'js2-mode)

(provide 'auto-modes)
