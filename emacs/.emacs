(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
(require 'adoc-mode)
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . adoc-mode))

;; start auto-complete with emacs
(require 'auto-complete)
;; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; no tab indent
(setq-default indent-tabs-mode nil)

;; make characters after column 80 purple and trailing spaces red
(require 'whitespace)
(setq whitespace-style
      (quote (face trailing lines-tail)))
(add-hook 'find-file-hook 'whitespace-mode)

;; Replace line above by these to display tabulations
;; (setq whitespace-style
;;       (quote (face trailing tab-mark lines-tail)))
;; (add-hook 'find-file-hook 'whitespace-mode)

;; scroll only one line at once
(setq mouse-wheel-progressive-speed nil)
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; uncomment to display line numbers
;; (global-linum-mode 1)
;; (setq linum-format "%4d \u2502 ")


;; keybindings to toggle functions
(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key (kbd "C-c <right>") 'hs-show-block)
    (local-set-key (kbd "C-c <left>")  'hs-hide-block)
    (local-set-key (kbd "C-c <up>")    'hs-hide-all)
    (local-set-key (kbd "C-c <down>")  'hs-show-all)
    (hs-minor-mode t)))
