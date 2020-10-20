;; Close Tool Bar
(tool-bar-mode -1)

;; Close Scroll Bar
(scroll-bar-mode -1)

;; Line Number
(global-linum-mode 1)

(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
  :hook prog-mode)                                         ; mode to enable fira-code-mode in

(provide 'init-ui)
