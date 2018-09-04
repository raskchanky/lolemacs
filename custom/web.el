(require 'sws-mode)

;; who in their right mind thought 8 spaces was appropriate as a default width
(custom-set-variables '(coffee-tab-width 2))

;; javascript
(setq js-indent-level 2)
(setq javascript-indent-level 2)
(setq js2-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
