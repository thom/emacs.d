k;; Misc. global key bindings

;; Some custom global key bindings
(global-set-key "\C-cs"  'calendar)
(global-set-key "\C-cf"  'font-lock-fontify-buffer)
(global-set-key "\C-cg"  'goto-line)
(global-set-key "\C-ch"  help-map)
(global-set-key "\C-ca"  'apply-macro-to-region-lines)
(global-set-key [M-up]   'scroll-n-lines-behind)
(global-set-key [M-down] 'scroll-n-lines-ahead)
(global-set-key "\C-ce"  'ecb-activate)
(global-set-key "\C-co"  'occur)
(global-set-key "\M-h"   'backward-kill-word)
(global-set-key "\M-d"   'kill-word)
(global-unset-key "\C-z")
(global-unset-key [insert])
(global-set-key [M-insert] 'overwrite-mode)
;;(global-set-key "\M-t" 'backward-char)
;;(global-set-key "\M-n" 'previous-line)
;;(global-set-key "\M-s" 'next-line)
;;(global-set-key "\M--" 'forward-char)
(global-set-key "\C-ci" 'set-tab-width)
(global-set-key "\C-c;" 'comment-region)

;; Auto whitespace consumption
(global-set-key [backspace] 'generic-hungry-backspace)
(global-set-key "\C-h"      'generic-hungry-backspace)
(global-set-key [delete]    'generic-hungry-delete)
(global-set-key "\C-d"      'generic-hungry-delete)

;; Except in text mode, where that would be annoying
(define-key text-mode-map [backspace] 'backward-delete-char-untabify)
(define-key text-mode-map "\C-h" 'backward-delete-char-untabify)
(define-key text-mode-map [delete] 'delete-char)
(define-key text-mode-map "\C-d" 'delete-char)

;; isearch -- be sane!
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)
(define-key isearch-mode-map [backspace] 'isearch-delete-char)

