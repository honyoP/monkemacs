;; The necessary de-uglification of vanilla Emacs install
(setq inhibit-startup-message t
      make-backup-files nil)

(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(load-theme 'wombat t)

(setq emacs-config-dir "$HOME/.config/emacs/")

;; *Packages configuration

(eval-when-compile
  (add-to-list 'load-path emacs-config-dir)
  (require 'use-package))

(load-file (concat emacs-config-dir "packages.el"))




;; The annoying Custom variables I am too lazy to deal with
;; Ignoring highly advised

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit org-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
