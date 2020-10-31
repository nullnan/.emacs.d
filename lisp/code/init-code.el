;; Configure about Progmmaring

(require 'init-company)
(require 'init-flycheck)
(require 'init-lsp)

;;; Code:
(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package ace-window
  :bind (("C-x o" . 'ace-window)))

(use-package magit)

(use-package smartparens
  :init (smartparens-global-mode t))
(use-package show-paren
  :ensure nil
  :hook ((emacs-lisp-mode . show-paren-mode)))
(provide 'init-code)
