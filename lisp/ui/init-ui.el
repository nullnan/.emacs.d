
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
(use-package nord-theme
  :init (load-theme 'nord t))

;; Set Powerline
(use-package powerline
  :init (powerline-default-theme))

;; Set Fira Code Font
(if (graphic-p)
    (use-package fira-code-mode
      :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
      :config ;;; Fira code
      ;; This works when using emacs --daemon + emacsclient
      (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
      ;; This works when using emacs without server/client
      (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
      :init (global-fira-code-mode)))

(use-package ivy-posframe
  :init (setq ivy-posframe-display-functions-alist
      '((swiper          . ivy-posframe-display-at-frame-center)
        (complete-symbol . ivy-posframe-display-at-point)
        (t               . ivy-posframe-display-at-frame-center)))
  (ivy-posframe-mode 1))
(provide 'init-ui)
