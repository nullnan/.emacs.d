 ;; Set Cursor Type to Bar
(setq-default cursor-type 'bar)

;; Close Tool Bar
(tool-bar-mode -1)

;; Close Scroll Bar
(scroll-bar-mode -1)

;; Line Number
;; (global-linum-mode 1)

;; Highlight Line
(global-hl-line-mode t)
(global-auto-revert-mode t)

;; Set Relative Line Number
(use-package emacs 
    :config 
    (setq display-line-numbers-type 'relative) 
    (global-display-line-numbers-mode t))

;; Set Theme
(use-package monokai
  :init (load-theme 'monokai t))

;; Set Fira Code Font
(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
  :hook prog-mode)                                         ; mode to enable fira-code-mode in

(provide 'init-ui)
