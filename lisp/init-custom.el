(defconst *is-mac* (eq system-type 'darwin)) 
(defconst *is-linux* (eq system-type 'gnu/linux)) 
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

(defun open-init-file()
  "Open my init file"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(use-package emacs
  :bind (("<f12>" . 'open-init-file)))

(provide 'init-custom)
