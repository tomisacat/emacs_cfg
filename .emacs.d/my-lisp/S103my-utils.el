;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; utils config file ;;
;; Time-stamp: <2012-08-23-00:18:07 Thursday by Mario>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

;; Cutting and pasting uses the clipboard
(setq x-select-enable-clipboard t)

;; Dont ask user a yes-or-no question, ask a y-no-n question.
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlighting matching parenthesis
(show-paren-mode t)

;; Time-stamp setting
(setq time-stamp-active t)
(setq time-stamp-format "%04y-%02m-%02d-%02H:%02M:%02S %:a by Mario")
(add-hook 'before-save-hook 'time-stamp)

;; Automatic reload file when the file changes on disk.
(global-auto-revert-mode t)

;; Automatic Indent according to major mode when enter RET.
(global-set-key "\r" 'newline-and-indent)

;; Set the default width of tab
;; (setq tab-width 4) ;; have no effect
(custom-set-variables '(tab-width 4))

;; Dont backup file
(setq make-backup-files nil)

;; Set the file used for storing customization information.
(setq custom-file (concat temporary-path "my-custom.el"))

;; Aoto complete the pair
(setq skeleton-pair t)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "`") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "'") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "<") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)

;; smart-operator
;;;;; (require 'smart-operator)
;;;;; (smart-operator-mode t)

;; browse
(setq browse-url-browser-function 'browse-url-chromium)

;; Auto saves after 100 input events
(setq auto-save-interval 50)

;; Enable font-lock mode
(global-font-lock-mode t)

;; Enabe image mode
(auto-image-file-mode t)
(setq mm-inline-large-images t)
;; (add-to-list 'mm-attachment-override-types "image/*")

;; Close the noise when enter tab
(setq visible-bell t)

;; Enable ido mode
(ido-mode t)

;; Set text-mode is the default mode
(custom-set-variables
 '(major-mode (quote text-mode)))

;; Better experience of page up and down
(setq scroll-margin 3 scroll-conservatively 10000)

;; If the cursor gets too close to the mouse, shows steps along the way
;; for illusion of motion
(mouse-avoidance-mode 'animate)

;; 当有两个文件名相同的缓冲时, 使用前缀的目录名做 buffer 名字.
(setq uniquify-buffer-name-style 'forward)

;; C-k delete the line
(setq-default kill-whole-line t)

;; Auto add a new line to end of file
(setq require-final-newline t)

(load-library "hideshow")
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)

;; Keep the cursor at end of line when moving between end of lines
;; (setq line-move-visual nil)
;; (setq track-eol t)

(defun eshell/clear()
  "to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; Start emacs server default.
(server-start)
