;; load customizations
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)

;; automatic install missing packages
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

;; use which-key
(which-key-mode)

;; configure helm
(helm-mode)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

;; use good-scroll
(good-scroll-mode 1)

;; load programming configurations
(load (concat user-emacs-directory "prog_conf/init.el"))
