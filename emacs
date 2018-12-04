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

;; Theme
;(use-package doom-themes
;  :ensure t
;  :config
;  (load-theme 'doom-one t))

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; All The Icons
(use-package all-the-icons :ensure t)

;; NeoTree
(use-package neotree
  :ensure t
  :init
);;  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;;(set-variable (quote latex-run-command) "pdflatex")
(setq TeX-PDF-mode t)
(setq TeX-auto-save nil)

(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)

;; (setq latex-run-command "xelatex")


;; reftex
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode
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

;; org-latex
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode %f"
	"xelatex -interaction nonstopmode %f"))

(setq org-src-fontify-natively t)

;; reveal.js presentations
(require 'ox-reveal)
(setq Org-Reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
(setq Org-Reveal-mathjax t)

(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
 (add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
 (setq matlab-indent-function t)
(setq matlab-shell-command "matlab")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" default)))
 '(package-selected-packages
   (quote
    (htmlize ox-reveal all-the-icons-dired monokai-theme neotree doom-themes use-package typo selectric-mode poet-theme org-bullets olivetti flyspell-correct))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

