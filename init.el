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

;; load programming configurations
(load (concat user-emacs-directory "prog_conf/init.el"))
