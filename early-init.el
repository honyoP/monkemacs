;;; early-init.el --- Description -*- lexical-binding: t; -*-
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
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(let (file-name-handler-alist)
  (if noninteractive
      (setq gc-cons-threshold 134217728
            gc-cons-percentage 1.0)
    (setq gc-cons-threshold most-positive-fixnum))

  (setq load-prefer-newer noninteractive))

;;; early-init.el ends here
