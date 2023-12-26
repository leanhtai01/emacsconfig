;;; init.el --- init file

;;; Commentary:
;; 

;;; Code:

;; set initial window's size and position
(when window-system
  (set-frame-position (selected-frame) 560 0)
  (set-frame-size (selected-frame) 85 50))

;; set backup edited files directory
(setq backup-directory-alist `(("" . ,(concat user-emacs-directory "backup-edited-files"))))

;; add custom configurations to load-path
(add-to-list 'load-path (concat user-emacs-directory "prog_conf"))

;; load customizations
(setq custom-file (concat user-emacs-directory "leanhtai01-custom.el"))
(load custom-file)

;; automatic install missing packages
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

;; use which-key
(which-key-mode)

;; configure ivy-mode
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; use C-x C-u to convert entire region to uppercase
(put 'upcase-region 'disabled nil)

;; use C-x C-l to convert entire region to lowercase
(put 'downcase-region 'disabled nil)

;; load programming configurations
(require 'leanhtai01-prog-init)

(provide 'init)

;;; init.el ends here
