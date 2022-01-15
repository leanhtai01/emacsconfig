;; display fill column indicator
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; use company mode
(add-hook 'prog-mode-hook 'company-mode)

;; load configurations for corresponding language
(let ((current-dir (concat user-emacs-directory "prog_conf/")))
  ;; C++
  (load (concat current-dir "cpp.el")))
