;; Miscellaneous definitions 

;; Some custom commands
(defun other-window-backwards (&optional n)
  "Select Nth previous window"
  (interactive "P")
  (other-window (- (prefix-numeric-value n))))

(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (scroll-behind (prefix-numeric-value n)))

(defun set-tab-width (width)
  "Set tab-width to 4"
  (interactive "P")
  (set-variable 'tab-width width))

(defun generic-hungry-code-at-point-p ()
  (let* ((properties (text-properties-at (point))))
    (null (or (memq 'font-lock-string-face properties)
              (memq 'font-lock-comment-face properties)))))

(defun generic-hungry-backspace (arg)
  (interactive "*P")
  (if (or arg (not (generic-hungry-code-at-point-p)))
      (backward-delete-char-untabify (prefix-numeric-value arg))
    (let ((here (point)))
      (skip-chars-backward " \t\n")
      (if (/= (point) here)
          (delete-region (point) here)
        (backward-delete-char-untabify 1)))))

(defun generic-hungry-delete (arg)
  (interactive "*P")
  (if (or arg (not (generic-hungry-code-at-point-p)))
      (backward-delete-char-untabify (- (prefix-numeric-value arg)))
    (let ((here (point)))
      (skip-chars-forward " \t\n")
      (if (/= (point) here)
          (delete-region (point) here)
        (backward-delete-char-untabify -1)))))

;; Browse kill-ring
(require 'browse-kill-ring)
(defadvice yank-pop (around kill-ring-browse-maybe (arg) activate)
  "If last action was not a yank, run `browse-kill-ring' instead."
  (if (not (eq last-command 'yank))
      (browse-kill-ring)
    ad-do-it))

;; Lorem ipsum dolor sit amet
(defun lorem ()
  "Insert a lorem ipsum."
  (interactive)
  (insert "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do "
	  "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad "
	  "minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
	  "aliquip ex ea commodo consequat. Duis aute irure dolor in "
	  "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla "
	  "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
	  "culpa qui officia deserunt mollit anim id est laborum."))
