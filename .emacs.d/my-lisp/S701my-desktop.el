;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Session and desktop config file ;;
;; Time-stamp: <2012-08-23-00:10:38 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Session setting
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; Desktop setting
(load "desktop")

;; Add temporary-path to desktop file searching list.
(add-to-list 'desktop-path temporary-path)

;; Set the directory in which the desktop file should be saved.
(setq desktop-dirname temporary-path)

;; Set the base name of the desktop file.
(setq desktop-base-file-name "emacs.desktop")

(add-to-list 'desktop-modes-not-to-save 'info-mode)

;; auto save
(desktop-save-mode t)
