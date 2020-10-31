(require 'init-eaf)
(require 'init-pyim)

(use-package restart-emacs
  :bind (("<f5>" . 'restart-emacs)))

(use-package emacs
  :config
  ;; Turn off some anoyed feature
  (setq ring-bell-function 'ignore)
  (defalias 'yes-or-no-p 'y-or-n-p)
  (setq inhibit-startup-screen t)
  ;; Turn off backup files
  (setq make-backup-files nil)
  
  (if (and (fboundp 'native-comp-available-p)
       (native-comp-available-p))
  (setq comp-deferred-compilation t)))

(use-package emacs
  :config (setq custom-file
		(expand-file-name "custom.el" user-emacs-directory))
  (when (file-exists-p custom-file)
    (load-file custom-file))
)


(use-package ivy 
  :defer 1 
  :demand 
  :hook (after-init . ivy-mode) 
  :config 
  (ivy-mode 1) 
  (setq ivy-use-virtual-buffers t 
        ivy-initial-inputs-alist nil 
        ivy-count-format "%d/%d " 
        enable-recursive-minibuffers t 
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))) 
  ) 

(use-package counsel 
  :after (ivy) 
  :bind (("M-x" . counsel-M-x) 
         ("C-x C-f" . counsel-find-file) 
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)
	 ("C-h f" . counsel-describe-function)
	 ("C-h v" . counsel-describe-variable))) 

(use-package swiper 
  :after ivy 
  :bind (("C-s" . swiper) 
         ("C-r" . swiper-isearch-backward)) 
  :config (setq swiper-action-recenter t 
                swiper-include-line-number-in-search t))
;; Old config here.
;; Swiper
;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)
;; (global-set-key "\C-s" 'swiper)
;;(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;(global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;(global-set-key (kbd "C-h f") 'counsel-describe-function)
;;(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;;(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
;;(global-set-key (kbd "C-h l") 'counsel-find-library)
;;(global-set-key (kbd "C-h i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "C-h u") 'counsel-unicode-char)


(provide 'init-misc)
