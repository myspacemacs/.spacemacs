(setq-default
 dotspacemacs-default-theme 'monokai)


(setq-default evil-escape-key-sequence (kbd "jk"))
(define-key evil-normal-state-map (kbd "\C-n") 'helm-projectile-find-file)
(define-key evil-normal-state-map (kbd "\C-p") 'helm-projectile-switch-to-buffer)
(define-key evil-normal-state-map (kbd "\C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "\C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "\C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "\C-l") 'evil-window-right)
(define-key evil-normal-state-map ";"  evil-ex)

(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

