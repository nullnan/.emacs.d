(use-package ccls
  :config (setq lsp-prefer-flymake nil)
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))

(provide 'init-cc)
