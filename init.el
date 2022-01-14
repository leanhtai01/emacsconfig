;; load customizations
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)

;; display fill column indicator in all programming modes
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; automatic install missing packages
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)
