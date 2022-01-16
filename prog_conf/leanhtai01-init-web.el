;;; leanhtai01-init-web.el --- configurations for web programming

;;; Commentary:
;; 

;;; Code:

;; use emmet-mode with sgml-mode and css-mode
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;; use lsp with sgml-mode, css-mode and js-mode
(add-hook 'sgml-mode-hook #'lsp)
(add-hook 'css-mode-hook #'lsp)
(add-hook 'js-mode-hook #'lsp)

(provide 'leanhtai01-init-web)

;;; leanhtai01-init-web.el ends here
