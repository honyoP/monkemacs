;;; packages.el --- Simple assortment of my favourite packages -*- lexical-binding: t; -*-
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
;;
;; Bleeding-edge repo from melpa selected, for stable cange package archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org"   . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("elpa"  . "https://elpa.gnu.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Essential "I will kill myself, if I won't have these" packages
(use-package org
  :ensure t
  :defer t)

(use-package magit
  :ensure t
  :defer t)

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-commands nil)
  (setq evil-vsplit-window-below t)
  (setq evil-split-window-below t)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package which-key
  :ensure t
  :init (which-key-mode)
  :config
  (setq which-key-idle-delay 0.3))

(use-package general
  :ensure t
  :config
  (general-create-definer monke-leader-key
			  :states '(normal visual insert emacs)
			  :keymaps 'override
			  :prefix "SPC"
			  :global-prefix "C-SPC")
  (monke-leader-key
   "SPC" '(execute-extended-command :which-key "M-x")
   "b"   '(:ignore t :which-key "buffer")
   "bb"  '(switch-to-buffer :which-key "switch buffer")
   "bk"  '(kill-current-buffer :which-key "kill buffer")

   "f"   '(:ignore t :which-key "files")
   "ff"  '(find-file :which-key "find file")
   "fs"  '(save-buffer :which-key "save buffer")

   "g"   '(:ignore t :which-key "git")
   "gg"  '(magit-status :which-key "git status")

   "m"   '(:ignore t :which-key "+localmodifier")
   "me"  '(eval-region :which-key "evaluate region")

   "w"   '(:ignore t :which-key "window")
   "wv"  '(evil-window-vsplit :which-key "evil vsplit")
   "ws"  '(evil-window-split :which-key "evil split")
   "wx"  '(delete-window :which-key "delete window")
   "wl"  '(windmove-right :which-key "move right")
   "wh"  '(windmove-left :which-key "move left")
   "wk"  '(windmove-up :which-key "move up")
   "wj"  '(windmove-down :which-key "move down")))

(use-package eglot
  :ensure t
  :defer t)

(use-package tree-sitter
  :ensure t
  :defer t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :ensure t
  :defer t
  :after tree-sitter)

(use-package dashboard
  :ensure t
  :config(dashboard-setup-startup-hook))

(use-package projectile
  :ensure t
  :defer t
  :after dashboard)

(use-package company
  :ensure t
  :defer t)

;; After load package config definitions

(setq monkemacs-package-config "$HOME/.config/emacs/monkemacs/packages/")
(load (concat monkemacs-package-config "./pkg-config-loader.el"))

(provide 'packages)

;;; packages.el ends here
