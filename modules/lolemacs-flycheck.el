;; Configuration for flycheck
;; http://www.flycheck.org/en/latest/

(use-package flycheck)
(use-package flycheck-color-mode-line)

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(provide 'lolemacs-flycheck)
