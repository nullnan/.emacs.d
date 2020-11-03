(use-package pyim
  :demand t
  :config
  ;; 激活 basedict 拼音词库
  (use-package pyim-basedict
    :config (pyim-basedict-enable))

  (setq default-input-method "pyim")

  ;; 全拼
  (setq pyim-default-scheme 'quanpin)

  ;; 开启拼音搜索功能
  (pyim-isearch-mode 1)

  ;; 使用 popup-el 来绘制选词框, 如果用 emacs26, 建议设置
  ;; 为 'posframe, 速度很快并且菜单不会变形，不过需要用户
  ;; 手动安装 posframe 包。
   (setq pyim-page-tooltip 'posframe)
;;  (setq pyim-page-tooltip 'popup)

  ;; 选词框显示5个候选词
  (setq pyim-page-length 7)

  (setq pyim-dicts
	'((:name "computer" :file "/home/null/.emacs.d/dicts/computer.pyim")
	  (:name "bigdict" :file "/home/null/.emacs.d/dicts/pyim-bigdict.pyim")))
  (add-hook 'emacs-startup-hook
          #'(lambda () (pyim-restart-1 t)))
  
  :bind
  (("M-j" . pyim-convert-string-at-point) ;与 pyim-probe-dynamic-english 配合
   ("C-;" . pyim-delete-word-from-personal-buffer)))
(provide 'init-pyim)
