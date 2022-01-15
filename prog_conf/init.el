;; display fill column indicator
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; use company mode
(add-hook 'prog-mode-hook 'company-mode)

;; configure lsp-mode's performance
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

;; load configurations for corresponding language
(let ((current-dir (concat user-emacs-directory "prog_conf/")))
  ;; C
  (load (concat current-dir "c.el"))
  
  ;; C++
  (load (concat current-dir "cpp.el")))
