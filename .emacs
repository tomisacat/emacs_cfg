;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Geniux's emacs config file 
;; Time-stamp: <2012-08-14-15:34:05 Tuesday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Init - 主要是一些自定义的变量的初始化, 配置文件的路径的設定.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 設置默認配置文件的頂層目錄 
(defconst emacs-config-path "~/.emacs.d/" "emacs配置文件的路径")

;; 添加兩個存放配置文件的目錄, site-lisp 存放網路上下載的 lisp 程序,
;; my-lisp 存放我自己寫的 lisp 程序
;; my-common 存放 网上下载的单个文件
(defconst site-lisp-path (concat emacs-config-path "site-lisp/") "emacs配置文件的路径")
(defconst app-path (concat emacs-config-path "app/") "非lisp程序路径")
(defconst my-lisp-path (concat emacs-config-path "my-lisp/") "emacs配置文件的路径")
(defconst my-lisp-common (concat my-lisp-path "my-common/") "公共文件")
(defconst temporary-path (concat emacs-config-path "temporary/") "Temporary directory")
(add-to-list 'load-path site-lisp-path)
(add-to-list 'load-path (concat site-lisp-path "share/emacs/site-lisp/"))
(add-to-list 'load-path my-lisp-path)
(add-to-list 'load-path my-lisp-common)


;; Load all files in my-lisp-path.
(setq load-files (directory-files my-lisp-path t "^S.*\\.el$"))
(if load-files
    (mapc 'load load-files)
  (print "No file to be load"))

(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
