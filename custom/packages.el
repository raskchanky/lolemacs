(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defvar jb/packages '(ace-window
                      ag
                      alchemist
                      auto-indent-mode
                      avy
                      better-defaults
                      cider
                      clojure-mode
                      clojure-quick-repls
                      coffee-mode
                      elm-mode
                      erlang
                      evil
                      exec-path-from-shell
                      flx-ido
                      flycheck
                      flycheck-color-mode-line
                      go-mode
                      haskell-mode
                      ido-ubiquitous
                      js2-mode
                      magit
                      markdown-mode
                      material-theme
                      pastels-on-dark-theme
                      projectile
                      rainbow-delimiters
                      rust-mode
                      scss-mode
                      smartparens
                      smex
                      sws-mode
                      terraform-mode
                      transpose-frame
                      tss
                      ujelly-theme
                      undo-tree
                      web-mode
                      yaml-mode))

(defun jb/packages-installed-p ()
  (cl-loop for pkg in jb/packages
        when (not (package-installed-p pkg)) do (cl-return nil)
        finally (cl-return t)))

(unless (jb/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg jb/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))
