(use-package 
  web-mode 
  :mode ("\\.html'" . web-mode))

(use-package 
  js2-mode 
  :mode ("\\.js'" . js2-mode))

(use-package emmet-mode
  :hook ((web-mode . emmet-mode)
	  (css-mode . emmet-mode)))

(provide 'init-web)
