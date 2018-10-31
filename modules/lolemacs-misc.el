;; Configuration for misc plugins that don't fit nicely elsewhere
;; https://github.com/abo-abo/lispy
;; https://github.com/syohex/emacs-git-gutter
;; https://github.com/bbatsov/super-save

(use-package super-save
             :ensure t
             :config
             (super-save-mode +1))

(use-package git-gutter
             :ensure t
             :config
             (global-git-gutter-mode +1))

(use-package lispy)

(provide 'lolemacs-misc)
