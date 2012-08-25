;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; config file for Writing
;; Time-stamp: <2012-08-23-00:09:34 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'xml-rpc)
(add-to-list 'load-path (concat site-lisp-path "org2blog"))
(require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://mathslinux.wordpress.org/xmlrpc.php"
         :username "mathslinux"   
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)
        ("my-blog"
                 :url "http://mathslinux.org/xmlrpc.php"
         :username "mathslinux")))
