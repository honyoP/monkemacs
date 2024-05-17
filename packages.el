;; Bleeding-edge repo from melpa selected, for stable cange package archives
(use-package package)
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
