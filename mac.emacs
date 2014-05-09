;; enable syntax highlighting
(global-font-lock-mode t)

;; .h files should default to c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Goto-line short-cut key
(global-set-key "\C-l" 'goto-line)

;; line numbers
(global-linum-mode t)

;; setq stuff
(setq linum-format "%d "          ; line number format
      ediff-split-window-function 'split-window-horizontally  ; ediff split
      indent-tabs-mode 'nil       ; tabs to spaces
      c-default-style "linux"     ; indent style
      c-basic-offset 2)           ; indent offset

;; trailing whitespace
(setq-default show-trailing-whitespace t)

;; colours
(load-theme 'manoj-dark t)

;; colors in pre-24
;(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
;(require 'color-theme)
;(add-to-list 'load-path "~/.emacs.d/themes")
;(require 'manoj-dark-theme)

;; predictive mode
;(add-to-list 'load-path "~/.emacs.d/predictive")
;(require 'predictive)

; this might help somewhere
(add-to-list 'load-path "~/.emacs.d")

;; go-mode
(require 'go-mode "~/.emacs.d/go-mode.el")

;; d-mode
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))
(require 'd-mode "~/.emacs.d/d-mode.el")

;; slime
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/slime")
(require 'slime-autoloads)
(setq slime-lisp-implementations
      `((sbcl ("/usr/local/bin/sbcl"))
	(clisp ("/usr/local/bin/clisp"))))
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))

;; google-c-style
;(require 'google-c-style "~/.emacs.d/google-c-style")
;(add-hook 'c-mode-common-hook 'google-set-c-style)


;;clang format
;(load "/usr/local/clang/tools/clang-format/clang-format.el")
;(global-set-key [C-M-tab] 'clang-format-region)

;; pabbrev
;(require 'pabbrev "~/.emacs.d/pabbrev.el")
;(global-pabbrev-mode)

(if (display-graphic-p)
    (load-theme 'manoj-dark t)
  )


;; auto-complete
;(add-to-list 'load-path "~/.emacs.d")    ; This may not be appeared if you have already added.
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "/Users/amodell/.emacs.d/ac-dict")
;(ac-config-default)

;(require 'auto-complete-clang-async "~/.emacs.d/auto-complete-clang-async.el")

;(defun ac-cc-mode-setup ()
;  (setq ac-clang-complete-executable "~/.emacs.d/emacs-clang-complete-async/clang-complete")
;  (setq ac-sources '(ac-source-clang-async))
;  (ac-clang-launch-completion-process)
;)
;(defun my-ac-config ()
;  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;  (global-auto-complete-mode t))

;(my-ac-config)



;; emacs package manager?!

(add-to-list 'load-path "~/.emacs.d/package.el")
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("54b607fc5e4f4f10484b3df83287182aba53554889a9b3f63759782421b0c95d" default)))
 '(haskell-mode-hook (quote (turn-on-haskell-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
