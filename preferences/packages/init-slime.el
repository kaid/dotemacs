(setq slime-net-coding-system 'utf-8-unix)
(require 'slime)
(slime-setup '(slime-tramp slime-fancy slime-asdf))

(push (slime-create-filename-translator :machine-instance "kaid-debian"
                                        :remote-host      "dev.kaid.me"
                                        :username         "kaid")
      slime-filename-translations)

(add-hook 'slime-load-hook 'filename-translator t)
