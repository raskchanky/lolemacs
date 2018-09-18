;; Configuration for smartparens
;; https://github.com/Fuco1/smartparens

(use-package smartparens)

(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)
(provide 'lolemacs-smartparens)
