(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.1/common")
(require 'cedet)
(require 'semantic-ia)

(global-ede-mode 1)

(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)
(global-srecode-minor-mode 1)
