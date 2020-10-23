(use-package crux 
  :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :config (global-hungry-delete-mode t))

(use-package drag-stuff 
  :bind (("<M-up>". drag-stuff-up) 
         ("<M-down>" . drag-stuff-down)))

(provide 'init-editor)
