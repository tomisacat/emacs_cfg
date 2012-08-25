;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode config file ;;
;; Time-stamp: <2012-08-23-00:09:53 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat site-lisp-path "share/emacs/site-lisp/"))
(require 'org-install)

(add-hook 'org-mode-hook 
	  (lambda () (setq truncate-lines nil)))
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(d)" "|" "DONE" "CANCEL(c)")
        (sequence "REPORT(r)" "DEBUG(b)" "|" "FIXED(f!)")
        (sequence "TODO" "|" "DONE")))
;; (setq org-log-done 'note)
(setq org-log-done nil)


;;;;;

(require 'outline-org-like)
