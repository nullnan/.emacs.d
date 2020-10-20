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
;; Set Cursor Type to Bar
(setq-default cursor-type 'bar)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; Turn off backup files
(setq make-backup-files nil)

;; Key Binding for configure file
(global-set-key (kbd "<f12>") 'open-init-file)

;; Smex
(require 'smex)
(smex-initialize)
;; (global-set-key (kbd "M-x") 'smex)

;; Swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
(global-set-key (kbd "C-h l") 'counsel-find-library)
(global-set-key (kbd "C-h i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "C-h u") 'counsel-unicode-char)

;; Smartparens
(require 'smartparens-config)
(smartparens-global-mode t)

;; Misc
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-company-mode 1)
(global-hl-line-mode t)
(global-auto-revert-mode t)
(require 'hungry-delete)
(global-hungry-delete-mode)
(setq ring-bell-function 'ignore)

;; Theme
(load-theme 'monokai t)


 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

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
