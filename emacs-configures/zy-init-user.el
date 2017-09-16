;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭右侧滑动条
(scroll-bar-mode -1)

;; 高亮显示当前行
(global-hl-line-mode)

;; 自动打开上次打开的文件
(desktop-save-mode 1)

;; 显示行号
(global-linum-mode t)

;;启用时间显示设置，在minibuffer上面的那个杠上
(display-time-mode t)

;; 24小时时间显示格式
(setq display-time-24hr-format t)

;; 时间显示格式 月-日 | 时间
(setq display-time-format "%m-%d| %w | %H:%M")

;; 显示日期
(setq display-time-day-and-date t)

;; 刷新间隔
(setq display-time-interval 10)


;; 用输入的内容替换选中的内容
(delete-selection-mode t)

;; 禁止文件备份
(setq make-backup-files nil)

;; 禁止auto-list
(setq auto-save-default nil)

;; 关闭滚动边界声音
(setq ring-bell-function 'ignore)

;; 关闭启动画面
(setq inhibit-splash-screen t)

;; 更改显示字体大小13pt
(set-face-attribute 'default nil :height 110)

;; 括号自动匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 开启全屏
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 设置窗口大小及位置
(setq initial-frame-alist '((top . 0) (left . 45) (width . 135) (height . 50)))


;; 开启最近打开文件记录
(recentf-mode t)
(setq recentf-max-menu-items 8)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;将短方框光标更改为短竖线
;(setq cursor-type 'bar)
;;(c-x,c-e 执行之后生效，重启emacs光标恢复原状)
;; 将setq改为setq-default即可
(setq-default cursor-type 'bar)

;; ****对于 ; 注释不会顶头
;; M-x (electric-indent-mode) 重启emacs回复
;; 关闭之后会引起缩进不正确，一般开启，默认开启,emacs用;;注释
;; (electric-indent-mode -1)

(provide 'zy-init-user)
