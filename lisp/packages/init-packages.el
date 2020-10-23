;;; package --- Summary:
;;; Code:
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
		smex
		swiper
		counsel
		ivy
		smartparens
		use-package
		magit
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

;; Some optimization for use-package

(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-always-minimally t
      use-package-verbose t)

(provide 'init-packages)
;;; init-packages.el ends here
