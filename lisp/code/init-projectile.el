(use-package projectile
  :init (projectile-mode +1)
  :config (setq projectile-completion-system 'ivy)
  :bind (("C-c p" . 'projectile-command-map)))
(provide 'init-projectile)
