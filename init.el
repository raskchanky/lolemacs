;; Set some paths
(setq base-dir (file-name-directory (or (buffer-file-name) (file-chase-links load-file-name))))

(add-to-list 'load-path (concat base-dir "modules"))

(require 'lolemacs-common)
(require 'lolemacs-package)
(require 'lolemacs-ace-window)
(require 'lolemacs-avy)
(require 'lolemacs-exec-path-from-shell)
(require 'lolemacs-flx-ido)
(require 'lolemacs-flycheck)
(require 'lolemacs-go-mode)
(require 'lolemacs-ido-completing-read-plus)
(require 'lolemacs-js2-mode)
(require 'lolemacs-magit)
(require 'lolemacs-markdown-mode)
(require 'lolemacs-projectile)
(require 'lolemacs-rainbow-delimiters)
(require 'lolemacs-rust-mode)
(require 'lolemacs-smartparens)
(require 'lolemacs-smex)
(require 'lolemacs-web-mode)
(require 'lolemacs-yaml-mode)

(use-package better-defaults)
(use-package transpose-frame)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ace-window use-package paradox))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
