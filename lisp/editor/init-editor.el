(use-package crux 
  :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :init (global-hungry-delete-mode))

(use-package drag-stuff 
  :bind (("<M-up>". drag-stuff-up) 
         ("<M-down>" . drag-stuff-down)))

(require 'init-treemacs)

(provide 'init-editor)
