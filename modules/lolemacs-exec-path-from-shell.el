;; Configuration for exec-path-from-shell
;; https://github.com/purcell/exec-path-from-shell

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(provide 'lolemacs-exec-path-from-shell)
