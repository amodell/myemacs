;; enable syntax highlighting 
(global-font-lock-mode t)

;; Goto-line short-cut key 
(global-set-key "\C-l" 'goto-line)

;; line numbers
(global-linum-mode t)
(setq linum-format "%d ")

;; 2 space tabs
(add-hook 'python-mode-hook '(lambda () (setq python-indent2)))

;; ediff split
(setq ediff-split-window-function 'split-window-horizontally)

;; trailing whitespace                                                                          
(setq-default show-trailing-whitespace t) 

;; colours
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'manoj-dark-theme)
;(require 'zenburn-theme)
;(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
;(require 'color-theme-solarized)
;(setq solarized-termcolors 256)

;(if (display-graphic-p) 
;    (load-theme 'manoj-dark t)
;)

