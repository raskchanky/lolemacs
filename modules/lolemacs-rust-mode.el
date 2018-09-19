;; Configuration for rust-mode
;; https://github.com/rust-lang/rust-mode
;; https://github.com/kwrooijen/cargo.el
;; https://github.com/flycheck/flycheck-rust
;; https://github.com/flycheck/flycheck-inline

(use-package rust-mode
  :config
  (setq rust-format-on-save t))

(use-package cargo
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(use-package flycheck-rust
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package flycheck-inline
  :config
  (flycheck-inline-mode))

(provide 'lolemacs-rust-mode)
