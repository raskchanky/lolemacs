(setq my-theme-dir "~/.emacs.d/themes")
(add-to-list 'load-path my-theme-dir)
(setq custom-theme-directory my-theme-dir)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("af4cfe7f2de40f19e0798d46057aae0bccfbc87a85a2d4100339eaf91a1f202a" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "3f78849e36a0a457ad71c1bda01001e3e197fe1837cb6eaa829eb37f0a4bdad5" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" "6c9ddb5e2ac58afb32358def7c68b6211f30dec8a92e44d2b9552141f76891b3" "5debeb813b180bd1c3756306cd8c83ac60fda55f85fb27249a0f2d55817e3cab" "33818a647c8d514de4571b7263ece9003fd4239807968bd501152c0643251857" "a6d39b3e27d45aea4bf0c20a9f6ccbff858eae1728ac0cf72d6a86bd873202d2" default)
     )))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#111111" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Anonymous Pro")))))

;; color scheme
(load-theme 'vibrant-ink t)
;(load-theme 'material t)
;(load-theme 'ujelly t)
; (load-theme 'tomorrow-night-bright t)
; (enable-theme 'tomorrow-night-bright)
; (load-theme 'tangotango t)

;; cursor color
(set-cursor-color "#ff0000")
