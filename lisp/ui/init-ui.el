(use-package emacs
  :config
  ;; Close Tool Bar
  (tool-bar-mode -1)
  ;; Close Scroll Bar
  (scroll-bar-mode -1)
  ;; Line Number
  ;; (global-linum-mode 1)
  (if (not (graphic-p))
      (menu-bar-mode -1))
  ;; Highlight Line
  (global-hl-line-mode t)
  (global-auto-revert-mode t)
  ;; Set Cursor Type to Bar
  (setq-default cursor-type 'bar)
  )



;; Set Relative Line Number
(use-package emacs 
    :config 
    (setq display-line-numbers-type 'relative) 
    (global-display-line-numbers-mode t))

;; Set Theme
(use-package monokai-theme
  :init (load-theme 'monokai t))

;; Set Fira Code Font
(if (graphic-p)
    (use-package fira-code-mode
      :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
      :hook prog-mode))                                         ; mode to enable fira-code-mode in

(provide 'init-ui)
