(use-package lsp-mode
    :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
           (python-mode . lsp-deferred)
	   (web-mode . lsp-deferred)
            ;; if you want which-key integration
            (lsp-mode . lsp-enable-which-key-integration))
    :commands (lsp lsp-deferred))

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :init (setq lsp-ui-doc-enable nil
	      lsp-ui-doc-use-webkit nil
	      lsp-ui-doc-position 'at-point
	      lsp-ui-doc-delay 0.3
	      lsp-ui-imenu-enable t
	      lsp-ui-peek-enable t
	      lsp-ui-sideline-enable nil
	      lsp-ui-sideline-ignore-duplicate t))
;; optionally
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs)

(provide 'init-lsp)
