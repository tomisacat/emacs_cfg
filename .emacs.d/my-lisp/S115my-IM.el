;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Input Method config file ;;
;; Time-stamp: <2012-08-23-00:09:16 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(require 'ibus)
;;(add-hook 'after-init-hook 'ibus-mode-on)

(add-to-list 'load-path "~/.emacs.d/site-lisp/eim")
(autoload 'eim-use-package "eim" "Another emacs input method")


(setq eim-use-tooltip nil)


(register-input-method
  "eim-py" "euc-cn" 'eim-use-package
  "拼音" "汉字拼音输入法" "py.txt"
  'my-eim-py-activate-function)


(require 'eim-extra)
(global-set-key ";" 'eim-insert-ascii)

(defun my-eim-py-activate-function ()
  (add-hook 'eim-active-hook 
        (lambda ()
          (let ((map (eim-mode-map)))
            (define-key map "-" 'eim-previous-page)
            (define-key map "=" 'eim-next-page)))))


(setq default-input-method "eim-wb")
