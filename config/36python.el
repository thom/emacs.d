;; Custom python-mode configuration

;; Python mode
(require 'python)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(add-to-list 'auto-mode-alist '("\\(^\\|/\\)SCons" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;;(define-key py-mode-map [backspace] 'py-electric-backspace)
;;(define-key py-mode-map "\C-h"      'py-electric-backspace)
;;(define-key py-mode-map [delete]    'py-electric-delete)
;;(define-key py-mode-map "\C-d"      'py-electric-delete)
