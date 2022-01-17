;;; leanhtai01-custom.el --- custom configurations

;;; Commentary:
;; 

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes t)
 '(magit-diff-refine-hunk 'all)
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(smartparens web-mode rainbow-delimiters good-scroll dap-mode emmet-mode sqlup-mode helm-xref helm-lsp yasnippet-snippets yasnippet lsp-treemacs which-key flycheck lsp-ui company lsp-mode treemacs nhexl-mode magit))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 113 :width normal))))
 '(region ((t (:extend t :background "#add6ff" :distant-foreground "gtk_selection_fg_color")))))

(provide 'leanhtai01-custom)

;;; leanhtai01-custom.el ends here
