(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t))

;; 设置要添加的三方库
(defvar Yanice/packages '(
			  swiper
			  counsel
	     		  company
			  web-mode
			  js2-mode
			  yasnippet
			  smartparens
			  hungry-delete
			  spacemacs-theme
			  ) "Default packages")

(defun Yanice/packages-installed-p()
  (loop for pkg in Yanice/packages
	when (not (package-installed-p pkg)) do(return nil)
	finally (return t)))

(unless (Yanice/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg Yanice/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

;; 开启自动提示
(global-company-mode t)

;; smartparens 输入左括号会自动输出右括号
(require 'smartparens-config)
(smartparens-global-mode t)

;;加载主题
(load-theme 'spacemacs-dark t)


;; yasnippet
(yas-global-mode t)

;; js2Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; swiper 增加搜索效率 依赖于counsel
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; 开启hungry-delete model 功能：一次删除多个空格
(global-hungry-delete-mode t)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
	     
(provide 'zy-init-packages)
