;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Yasnippet map config file
;; Time-stamp: <2012-08-23-00:10:11 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat site-lisp-path "yasnippet"))
(require 'yasnippet) ;; not yasnippet-bundle

(setq yas/root-directory (concat site-lisp-path "yasnippet/snippets"))
(yas/load-directory yas/root-directory)
(setq yas/trigger-key nil)
(yas/global-mode t)

(define-key yas/keymap (kbd "M-j") 'yas/next-field-or-maybe-expand)
(define-key yas/keymap (kbd "M-k") 'yas/prev-field)



