;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; UI config file
;; Time-stamp: <2012-08-24-01:21:42 Friday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(if (display-graphic-p)
    (progn
	  (set-fontset-font
	   (frame-parameter nil 'font)
	   'han
	   (font-spec :family "WenQuanYi Micro Hei Mono" :slant 'normal :weight 'normal :width 'normal :size 15))
	  (set-face-attribute
	   'default nil :font "Ubuntu Mono 12")
	  ))

;; Theme setting
;;;;(require 'color-theme)
;; (load "color-theme-blackboard.el")
;; (color-theme-blackboard)
;;;;(color-theme-oswald)
;; (color-theme-rotor)

;; solarized theme
;; (require 'color-theme-solarized)
;; (color-theme-solarized-dark)]
;; (color-theme-solarized-light)

;; 顯示行號和列號
(setq line-number-mode t)
(setq column-number-mode t)		; has been openned
(global-linum-mode t)			; show line number

;; 顯示標籤
(require 'tabbar)
(tabbar-mode t)
;; Cyclic navigation through tabs
(setq tabbar-cycling-scope 'tabs)

;; Hide tool bar
(tool-bar-mode -1)

;; Hide menu bar
(menu-bar-mode -1)

;; Set window's title 
(setq frame-title-format "Mario's emacs@%b")

;; Inhibits the startup screen
(setq inhibit-startup-message t)

;; Cancel the scroll
(set-scroll-bar-mode nil)

;; Support full screen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
	(set-frame-parameter nil 'fullscreen
						 (if (equal 'fullboth current-value)
							 (if (boundp 'old-fullscreen) old-fullscreen nil)
						   (progn (setq old-fullscreen current-value)
								  'fullboth)))))
(global-set-key [f9] 'toggle-fullscreen)
(add-hook 'after-make-frame-functions 'toggle-fullscreen)
(toggle-fullscreen)


;; set to show time 
(display-time)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

(load-file "~/.emacs.d/site-lisp/color-theme.el")
(require 'color-theme)
(color-theme-arjen)
