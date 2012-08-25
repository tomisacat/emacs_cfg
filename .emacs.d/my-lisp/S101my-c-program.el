;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c mode config file ;;
;; Time-stamp: <2012-08-24-18:11:03 Friday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)


(add-hook 'c-mode-hook 'gx-c-mode)

(require 'highlight-parentheses)
(add-hook 'c-mode-hook 'highlight-parentheses-mode)

;;自动补全注释
(setq c-mode-hook '(lambda () (auto-fill-mode 1)))

;; 设置imenu的排序方式为按名称排序
(setq imenu-sort-function 'imenu--sort-by-name)

(defun gx-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  ;;有空格版本
    (setq skeleton-pair-alist  '(
			           (?` ?` _ "''")
			           (?\( ?  _ " )")
	  		           (?\[ ?  _ " ]")
			           (?{ \n > _ \n ?} >)))
;;  (setq skeleton-pair-alist  '(
;;			       (?` ?` _ "''")
;;			       (?\(   _ ")")
;;			       (?\[   _ "]")
;;			       (?{ \n > _ \n ?} >)
;;				))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
;;  (local-set-key (kbd "<") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))

(add-hook 'c-mode-hook 'gx-mode-auto-pair)
(add-hook 'c++-mode-hook 'gx-mode-auto-pair)

(defun gx-c-mode()
  (interactive)
  (c-set-style "K&R")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (setq c-basic-offset 4)
  (imenu-add-menubar-index)
  (which-function-mode t)
  )


(load "sourcepair")
(define-key c-mode-map (kbd "<f11>") 'sourcepair-load)

;; c/h 跳转
(setq sourcepair-source-path    '( "." "../*" ))
(setq sourcepair-header-path    '( "." "include" "../include" "../*"))
(setq sourcepair-recurse-ignore '( "CVS" "Obj" "Debug" "Release" ))

;; cscope
(require 'xcscope)
(setq cscope-do-not-update-database t)

;; doxygen
(require 'doxymacs)
(add-hook 'c-mode-common-hook 'doxymacs-mode)
(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
	  (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

(setq compile-command "gcc -g -o")


;;;gccsense
;;(require 'gccsense)
;;(global-set-key "\257" (quote ac-complete-gccsense))

;;;;;;;;; auto-header ;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'auto-header)
;; 设置文件头中的姓名
;(setq header-full-name "Tom Mario")
;; 设置邮箱
;(setq header-email-address "wajmjjj@gmail.com")
 
;; 设置每次保存时要更新的项目
;(setq header-update-on-save
;	'(  filename
;		modified
;		counter
;		copyright))
;; 设置文件头的显示格式
;(setq header-field-list
;'(  filename  ;文件名
;	blank	 ;空行，下同
;	copyright ;;版权
;	version
;	author	;作者
;	created   ;创建人
;	blank
;	description   ;描述
	;;blank
	;;modified_by ;更改者
   ;; blank
	;;status  ;状态，是否发布
	;;更新
	;;blank
;  ))
