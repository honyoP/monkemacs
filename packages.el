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
  :defer t
  :hook
  ((js-ts-mode . eglot-ensure)
   (tsx-ts-mode . eglot-ensure)
   (typescript-ts-mode . eglot-ensure)))

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

(use-package typescript-mode
  :after tree-sitter
  :config
  (define-derived-mode typescriptreact-mode typescript-mode
    "TypeScript TSX")
  (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescriptreact-mode))
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescriptreact-mode . tsx)))

(use-package company
  :ensure t
  :defer t)
