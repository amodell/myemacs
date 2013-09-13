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

;; colours
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)

(if (display-graphic-p) 
    (load-theme 'manoj-dark t)
)

