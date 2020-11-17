(use-package crux 
  :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :init (global-hungry-delete-mode))

(use-package drag-stuff 
  :bind (("<M-up>". drag-stuff-up) 
         ("<M-down>" . drag-stuff-down)))

(use-package smooth-scrolling
  :hook (after-init . smooth-scrolling-mode)
  :config (setq smooth-scroll-margin 3))

(use-package awesome-tab
  :load-path "~/.emacs.d/site-lisp/awesome-tab"
  :config
  (awesome-tab-mode t))

(require 'init-treemacs)
(require 'init-yas)

(provide 'init-editor)
