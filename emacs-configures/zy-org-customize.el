;; org-mode代码块高亮显示
(setq org-src-fontify-natively t)

;; 关闭多级标题前多余的星号
(setq org-startup-indented t)

;; agenda文件路径
(setq org-agenda-files '("~/Desktop"))

;; org-agenda view
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'zy-org-customize)
