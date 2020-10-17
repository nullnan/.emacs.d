;; Close Tool Bar
(tool-bar-mode -1)

;; Close Scroll Bar
(scroll-bar-mode -1)

;; Line Number
(global-linum-mode 1)

;; Set Cursor Type to Bar
(setq-default cursor-type 'bar)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )

;; Key Binding for configure file
(global-set-key (kbd "<f12>") 'open-init-file)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas ligaturized v2" :foundry "MS  " :slant normal :weight normal :height 120 :width normal)))))
