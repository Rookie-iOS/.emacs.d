(package-initialize)
(add-to-list 'load-path "~/.emacs.d/emacs-configures/")
(setq custom-file (expand-file-name "~/.emacs.d/emacs-configures/zy-customize.el" user-emacs-directory))

(require 'zy-init-user)
(require 'zy-org-customize)
(require 'zy-init-packages)
(require 'zy-init-key-bindings)
(load-file "~/.emacs.d/emacs-configures/zy-customize.el")

;; 一些小技巧
;; 快速打开TUTORIAL c-h t
;; org-mode 中快速插入代码快捷键 <s TAB 即可
;; 用相应的mode c-r ' 即可
;; 关闭再次 c-r '
;; 自定义缩写 输入zy空格 就会出现zhangyang空格
;; emacs 中启动终端 M-x shell 退出终端 在shell界面输入exit

;;(abbrev-mode t)
;;(define-abbrev-table 'global-abbrev-table '(
;;					    ("zy" "zhangyang")
;;					    ))
