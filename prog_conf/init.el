;; display fill column indicator in all programming modes
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; load configurations for corresponding language
(let ((current-dir (concat user-emacs-directory "prog_conf/")))
  ;; C++
  (load (concat current-dir "cpp.el")))
