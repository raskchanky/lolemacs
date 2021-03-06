;; Set some paths
(setq base-dir (file-name-directory (or (buffer-file-name) (file-chase-links load-file-name))))

(add-to-list 'load-path (concat base-dir "modules"))

(setq custom-file (concat base-dir "custom.el"))
(load custom-file 'noerror)

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
(require 'lolemacs-misc)

(use-package better-defaults)
(use-package transpose-frame)
