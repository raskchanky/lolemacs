(setq inhibit-splash-screen t
      initial-scratch-message nil)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

(blink-cursor-mode 0)

(global-linum-mode t)
(global-auto-revert-mode t)

(setq magit-last-seen-setup-instructions "1.4.0")

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(setq tab-width 2
      indent-tabs-mode nil)

;; delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; configure backups
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.emacs.d/backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(setq auto-save-file-name-transforms '((".*" "~/.emacs-backup-files" t)))

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
(defvar real-keyboard-keys
  '(("M-<up>"    . "\M-[1;3A")
    ("M-<down>"  . "\M-[1;3B")
    ("M-<left>"  . "\M-[1;3D")
    ("M-<right>" . "\M-[1;3C"))
"An assoc list of pretty key strings and their terminal equivalents")

(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

(defun key (desc)
  (or (and window-system (read-kbd-macro desc))
      (or (cdr (assoc desc real-keyboard-keys))
          (read-kbd-macro desc))))

(global-set-key (key "M-<left>") 'windmove-left)
(global-set-key (key "M-<right>") 'windmove-right)
(global-set-key (key "M-<up>") 'windmove-up)
(global-set-key (key "M-<down>") 'windmove-down)

;; more random keybindings
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "M-p") 'ace-window)

;; select the new window after a split
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(require 'transpose-frame)

;; flx-ido
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; setup indentation
;(auto-indent-global-mode)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(projectile-global-mode)

(require 'undo-tree)
(global-undo-tree-mode)

;; evil mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

