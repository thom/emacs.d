;; Custom css-mode configuration

(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)

;; Some eval-on-load stuff
(require 'css-mode)

(defadvice cssm-complete-property
  (after cssm-complete-add-space activate)
  "Modify CSS completion to add a space after full completion."
  (when (eq (char-before) ?:) (insert " ")))
