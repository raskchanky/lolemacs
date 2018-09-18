;; Disable the default splash screen
(setq inhibit-splash-screen t
      initial-scratch-message nil)

;; Turn off all the useless modes
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Enable various modes
(delete-selection-mode t)
(transient-mark-mode t)
(blink-cursor-mode 0)
(global-display-line-numbers-mode)
(global-auto-revert-mode)

;; Set various variables and defaults
(setq select-enable-clipboard t)
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))
(setq tab-width 2
			indent-tabs-mode nil)

;; Trailing whitespace can die in a fire
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Configure backups
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; y and n vs yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)
(show-paren-mode t)
(setq column-number-mode t)

;; indentation and buffer cleanup
(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(defun cleanup-region (beg end)
  "Remove tmux artifacts from region."
  (interactive "r")
  (dolist (re '("\\\\│\·*\n" "\W*│\·*"))
    (replace-regexp re "" nil beg end)))

(global-set-key (kbd "C-x M-t") 'cleanup-region)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

(setq-default show-trailing-whitespace t)

;; setup some key bindings for navigating splits
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)

;; select the new window after a split
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(provide 'lolemacs-common)
