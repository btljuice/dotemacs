;;;; package initialization section
;;;; Package configuration
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(setq package-archive-priorities
	'(("gnu" . 10)
	  ("melpa-stable" . 5)
	  ("melpa" . 0)))
(package-initialize)

;;;; helm
(require 'helm-config)

;;; some options
(visual-line-mode 1)
(menu-bar-no-scroll-bar)
(tool-bar-mode -1)
(winner-mode 1)

(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; global key bindings
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-i") 'imenu)

;;;; Setting custom file 
(setq custom-file (concat default-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))
