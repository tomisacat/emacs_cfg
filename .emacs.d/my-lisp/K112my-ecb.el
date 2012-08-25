;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ECB config file
;; Time-stamp: <2012-08-23-00:09:08 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat site-lisp-path "ecb"))
(require 'ecb)
(defun gx-ecb ()
  "启动ecb"
  (interactive)
  (setq ecb-tip-of-the-day nil)
  (ecb-activate))
  (ecb-layout-switch "left2")
(gx-ecb)
