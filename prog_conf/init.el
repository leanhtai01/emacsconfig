;; display fill column indicator
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; use company mode
(add-hook 'prog-mode-hook 'company-mode)

;; use yasnippet
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; configure company-mode
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

;; configure lsp-mode's performance
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

;; lsp which-key integration
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

;; load configurations for corresponding language
(let ((current-dir (concat user-emacs-directory "prog_conf/")))
  ;; C
  (load (concat current-dir "c.el"))
  
  ;; C++
  (load (concat current-dir "cpp.el"))

  ;; SQL
  (load (concat current-dir "sql.el"))

  ;; Web
  (load (concat current-dir "web.el")))
