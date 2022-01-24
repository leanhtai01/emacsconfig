;;; leanhtai01-custom.el --- custom configurations

;;; Commentary:
;; 

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(vscode-dark-plus))
 '(custom-safe-themes t)
 '(delete-selection-mode t)
 '(global-auto-revert-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(magit-diff-refine-hunk 'all)
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(lsp-java csharp-mode vscode-dark-plus-theme smartparens web-mode rainbow-delimiters dap-mode emmet-mode sqlup-mode helm-xref helm-lsp yasnippet-snippets yasnippet lsp-treemacs which-key flycheck lsp-ui company lsp-mode treemacs nhexl-mode magit))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 113 :width normal))))
 '(diff-refine-added ((t (:background "#228622" :foreground "#f4f4f4"))))
 '(diff-refine-removed ((t (:background "#aa2222" :foreground "#f4f4f4"))))
 '(magit-diff-added ((t (:extend t :background "#335533" :foreground "#e8e8e8"))))
 '(magit-diff-added-highlight ((t (:extend t :background "#335533" :foreground "#f4f4f4"))))
 '(magit-diff-file-heading ((t (:extend t :foreground "white" :weight bold))))
 '(magit-diff-hunk-heading-highlight ((t (:extend t :background "#595959"))))
 '(magit-diff-removed-highlight ((t (:extend t :background "#663333" :foreground "#f4f4f4")))))

(provide 'leanhtai01-custom)

;;; leanhtai01-custom.el ends here
