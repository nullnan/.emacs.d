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

;; Turn off backup files
(setq make-backup-files nil)

;; Key Binding for configure file
(global-set-key (kbd "<f12>") 'open-init-file)



;; Misc
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-company-mode 1)
(global-hl-line-mode t)

;; Theme
(load-theme 'monokai t)

;; Package
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "https://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "https://mirrors.ustc.edu.cn/elpa/org/"))))

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		;; --- Themes ---
		monokai-theme
		;; solarized-theme
		restart-emacs
		hungry-delete
    		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas ligaturized v2" :foundry "MS  " :slant normal :weight normal :height 120 :width normal)))))

