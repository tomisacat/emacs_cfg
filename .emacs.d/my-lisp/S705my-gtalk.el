;;必须先安装jabber，可以网上下载后./configure --> make --> sudo make install

;(add-to-list 'load-path (concat site-lisp-path "share/emacs/site-lisp/"))
(load "jabber-autoloads")
(setq jabber-account-list
      '(("wajmjjj@gmail.com"
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))
