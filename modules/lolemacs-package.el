;; Much of this is stolen from ohai-emacs
(setq package-user-dir (concat base-dir "elpa"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(unless package-archive-contents (package-refresh-contents))

(when (not (package-installed-p 'paradox))
  (package-install 'paradox))

(paradox-require 'use-package)
(require 'use-package)
(setq use-package-always-ensure t)

(provide 'lolemacs-package)
