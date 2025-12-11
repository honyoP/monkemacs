;;; monke.el --- Simple assortment of my favourite packages -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025
;;
;; Author:  <honyo@froggy>
;; Maintainer:  <honyo@froggy>
;; Created: December 11, 2025
;; Modified: December 11, 2025
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;; Homepage: https://github.com/honyo/early-init
;; Package-Requires: ((emacs "30.2"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
;; The necessary de-uglification of vanilla Emacs install
(setq inhibit-startup-message t
      make-backup-files nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(load-theme 'wombat t)


;; *Packages configuration

(eval-when-compile
  (add-to-list 'load-path emacs-config-dir)
  (require 'use-package))

(require 'packages)


;; My subjective coding configs

(setq-default indent-tabs-mode nil
	      tab-width 4)
(add-hook 'after-init-hook 'global-company-mode)

;; The annoying Custom variables I am too lazy to deal with
;; Ignoring highly advised

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(projectile dashboard tree-sitter-langs tree-sitter treesit company company-mode evil magit org-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'monke)

;;; monke.el ends here
