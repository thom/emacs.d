;; Custom cc-mode configuration

(require 'cc-mode)

(defun custom-c-mode-common-hook ()
  (c-toggle-auto-hungry-state t)
  (c-set-style "java")
;;  (setq tab-width 8 indent-tabs-mode nil)
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))

(add-hook 'c-mode-common-hook 'custom-c-mode-common-hook)
