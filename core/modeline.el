(setq powerline-height 20)
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

(set-face-attribute 'powerline-inactive1 nil
                    :background "#9dd4ff"
                    :foreground "#c4e5ff"
                    :box nil)

(set-face-attribute 'powerline-inactive2 nil
                    :background "#4db0ff"
                    :foreground "#c4e5ff"
                    :box nil)

(set-face-attribute 'mode-line-inactive nil
                    :background "#008eff"
                    :foreground "#c4e5ff"
                    :box nil)

(powerline-center-evil-theme)

(provide 'modeline)
