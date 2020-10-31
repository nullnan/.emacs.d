(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package flycheck-posframe
  :after flycheck
  :hook (prog-mode . flycheck-posframe-mode))

(provide 'init-flycheck)

