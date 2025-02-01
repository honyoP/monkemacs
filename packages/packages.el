;; Bleeding-edge repo from melpa selected, for stable cange package archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
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
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-commands nil)
  (setq evil-vsplit-window-below t)
  (setq evil-split-window-below t)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)
  (evil-set-leader nil (kbd "C-SPC"))
  (evil-set-leader 'normal (kbd "SPC")))

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
