;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
;;(tooltip-mode    -1)
;;(menu-bar-mode   -1)

;;(add-to-list 'default-frame-alist '(font . "mononoki-14"))
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 80))

;; font size (multiply by 10... e.g. 13pt is 130)
(set-face-attribute 'default nil :height 130)

;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)
(setq TeX-auto-save nil)

(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 'color)

;; reftex
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode
(setq reftex-plug-into-AUCTeX t)

;; Activate nice interface between RefTeX and AUCTeX
(setq reftex-plug-into-AUCTeX t)

;; for Mac, use same PATH as shell path
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell 
      (replace-regexp-in-string "[[:space:]\n]*$" "" 
        (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))

;; mac use option key as meta
(setq mac-option-modifier 'meta)

;; unfill-region
(defun unfill-region (beg end)
  "Unfill the region, joining text paragraphs into a single
    logical line.  This is useful, e.g., for use with
    `visual-line-mode'."
  (interactive "*r")
  (let ((fill-column (point-max)))
    (fill-region beg end)))

;; KGB intermediate files after orgmode export
(setq org-latex-logfiles-extensions (quote ("tex" "aux" "log" "out" "toc" "blg" "bbl" "auto")))

;; ess
(require 'ess-site)

;; org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)))
(setq org-confirm-babel-evaluate nil) ;; BE CAREFUL!

;; org-latex
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode %f"
	"xelatex -interaction nonstopmode %f"))
(setq org-src-fontify-natively t)

(global-visual-line-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ess htmlize auctex auctex-latexmk))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
