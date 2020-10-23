;; Some optimization
(setq gc-cons-threshold-original gc-cons-threshold)
(setq gc-cons-threshold (* 1024 1024 100))

;; Load Path
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-ui)
(require 'init-code)
(require 'init-custom)
(require 'init-editor)
(require 'init-misc)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas ligaturized v2" :foundry "MS  " :slant normal :weight normal :height 120 :width normal)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(package-selected-packages
   '(fira-code-mode company monokai-theme restart-emacs hungry-delete smex swiper counsel ivy smartparens use-package)))
