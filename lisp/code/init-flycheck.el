(use-package flycheck
  :hook (after-init . global-flycheck-mode))

;;(use-package flycheck-posframe
;;  :after flycheck
;;  :hook (global-flycheck-mode . flycheck-posframe-mode))

;; 用GUI tooltips来显示检查到的错误

(use-package flycheck-posframe
  :custom-face (flycheck-posframe-border-face ((t (:inherit default))))
  :hook (flycheck-mode . flycheck-posframe-mode)
  :init (setq flycheck-posframe-border-width 1
	      ;; IDK What is this
	      ;;flycheck-posframe-inhibit-functions '((lambda (&rest _) (bound-and-true-p company-backend)))
	      ))

(use-package flycheck-pos-tip
  :defines flycheck-pos-tip-timeout
  :hook (global-flycheck-mode . flycheck-pos-tip-mode)
  :config (setq flycheck-pos-tip-timeout 30))

(use-package flycheck-popup-tip
  :hook (flycheck-mode . flycheck-popup-tip-mode))

(provide 'init-flycheck)

