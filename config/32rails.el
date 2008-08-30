;; emacs-rails
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-rails/")
(require 'rails)
(require 'haml-mode nil 't)
(require 'sass-mode nil 't)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/vendor/rinari/")
(require 'rinari)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project) ;; optional

;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/vendor/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
 	  (lambda () (rinari-launch)))
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode))