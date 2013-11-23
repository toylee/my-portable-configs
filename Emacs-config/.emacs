 (load-file "~/.emacs.d/emacs-for-python/epy-init.el")
(add-to-list 'load-path "~/.emacs.d/emacs-for-python/") ;; tell where to load the various files
 (require 'epy-setup)      ;; It will setup other loads, it is required!
 (require 'epy-python)     ;; If you want the python facilities [optional]
 (require 'epy-completion) ;; If you want the autocompletion settings [optional]
 (require 'epy-editing)    ;; For configurations related to editing [optional]
 (require 'epy-bindings)   ;; For my suggested keybindings [optional]
 (require 'epy-nose)       ;; For nose integration
;;;configuring the flymake checker
 (epy-setup-checker "pyflakes %f")
;;;line highlighting
 (global-hl-line-mode t) ;; To enable
 (set-face-background 'hl-line "grey") ;; change with the color that you like
                                        ;; for a list of colors: http://raebear.net/comp/emacscolors.html

(require 'highlight-indentation)
 (add-hook 'python-mode-hook 'highlight-indentation)

(setq skeleton-pair nil) 

(global-set-key (kbd "C-t") 'set-mark-command)

 ;;;markdown mode
(add-to-list 'load-path "~/.emacs.d/modes")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
;;;markdown-mode yasnippets’s TAB completion doesn’t work. It’s just because TAB key is bind to markdown-cycle function.
(defun markdown-unset-tab ()
  "markdown-mode-hook"
  (define-key markdown-mode-map (kbd "<tab>") nil))
(add-hook 'markdown-mode-hook '(lambda() (markdown-unset-tab)))

;;input
(global-set-key (kbd "C-SPC") nil)

;;save the buffers when exit Emacs
(desktop-save-mode 1)

;;go-mode
(add-to-list 'load-path "/usr/local/go/misc/emacs")
(require 'go-mode-load)
(setq auto-mode-alist
      (cons '("\\.go" . go-mode) auto-mode-alist))
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
;; cursor meet mouse    
(mouse-avoidance-mode 'animate)
;; yes no 2 y n
(fset 'yes-or-no-p 'y-or-n-p)			       
;; set font
;;(set-default-font "-unknown-文泉驿等宽微米黑-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1" )
;; set the font size
;;(set-face-attribute 'default nil :height 150)

;;disable tool-bar
(tool-bar-mode 0)

