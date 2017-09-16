;; 将快速打开配置文件绑定到f2上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 快速打开全屏
(global-set-key (kbd "C-q") 'toggle-frame-maximized)

;; 快速打开最近打开文件列表
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; swiper快捷键绑定
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(provide 'zy-init-key-bindings)
