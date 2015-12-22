(setq powerline-height 24)
(setq powerline-default-separator 'slant)

(set-face-attribute 'powerline-active1 nil
                    :background "#4db0ff"
                    :foreground "#ffffff"
                    :box nil)

(set-face-attribute 'powerline-active2 nil
                    :background "#008eff"
                    :foreground "#ffffff"
                    :box nil)

(set-face-attribute 'mode-line nil
                    :background "#0063b3"
                    :foreground "#ffffff"
                    :box nil)

(powerline-center-evil-theme)

(provide 'modeline)
