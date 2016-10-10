(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
(require 'adoc-mode)
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . adoc-mode))
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this linehhhhhhhhhhhhhhhhhhhhhhhh

                                        ; start auto-complete with emacs
(require 'auto-complete)
                                        ; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

(setq-default indent-tabs-mode nil)
(require 'whitespace)
                                        ; make carriage returns blue and tabs green
(custom-set-faces
 '(my-carriage-return-face ((((class color)) (:background "blue"))) t)
 '(my-tab-face ((((class color)) (:background "green"))) t)
 )
                                        ; add custom font locks to all buffers and all files
(add-hook
 'font-lock-mode-hook
 (function
  (lambda ()
    (setq
     font-lock-keywords
     (append
      font-lock-keywords
      '(
        ("\r" (0 'my-carriage-return-face t))
        ("\t" (0 'my-tab-face t))
        ))))))

                                        ; make characters after column 80 purple
(setq whitespace-style
      (quote (face trailing tab-mark lines-tail)))
(add-hook 'find-file-hook 'whitespace-mode)

; transform literal tabs into a right-pointing triangle
;; (setq
;;  whitespace-display-mappings ;http://ergoemacs.org/emacs/whitespace-mode.html
;;  '(
;;    (tab-mark 9 [9654 9] [92 9])
;;                                         ;others substitutions...
;;       ))

(setq mouse-wheel-progressive-speed nil)
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
