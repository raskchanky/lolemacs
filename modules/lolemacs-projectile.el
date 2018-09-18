;; Configuration for projectile
;; https://github.com/bbatsov/projectile

(use-package projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(provide 'lolemacs-projectile)
