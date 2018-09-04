(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save idle-change new-line))
(setq flycheck-idle-change-delay 1)
