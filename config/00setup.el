;; Personal initial setup code

;; This file contains miscellaneous startup code which needs to / can
;; run early-on

;; Add vendor to load path
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Load misc modes
(require 'url)
(require 'align)

;; Start the emacsclient server
(server-start)

;; When you start Emacs, package Session restores various variables
;; (e.g., input histories) from your last session. It also provides a
;; menu containing recently changed/visited files and restores the
;; places (e.g., point) of such a file when you revisit it.
;;
;; C-x C-/ jumps to the position of the last change
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; Preserve the owner and group of the file you're editing
(setq backup-by-copying-when-mismatch t)

;; make text-mode the default major mode and start auto-fill mode
;; auto-magically
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;(setq-default auto-fill-function 'do-auto-fill)
;(setq auto-fill-mode 1)

;; Turn off the annoying alarm bell
(setq ring-bell-function 'ignore)

;; Make scripts executable on Save (saves having to do the chmod every time)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; Set up Time Stamps
(add-hook 'before-save-hook 'time-stamp)

;; Misc
(when window-system
  (mouse-wheel-mode t)
  (global-hl-line-mode t))

(setq transient-mark-mode t)
(setq ps-paper-type 'a4)

;; Disable cursor blinking
(if (fboundp 'blink-cursor-mode) (blink-cursor-mode 0))

;; Drive out the mouse when it's too near to the cursor.
(mouse-avoidance-mode 'animate)

;; Show line-number in the mode line
(line-number-mode t)

;; Show column-number in the mode line
(column-number-mode t)

;; If you want Shell mode to handle color output from shell commands, you can
;; enable ANSI Color mode:
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Will allow you to type just "y" instead of "yes" when you exit.
(fset 'yes-or-no-p 'y-or-n-p)

;; Load .gz's automatically
(auto-compression-mode t)

;; Just say no to splash screens
(setq inhibit-startup-message t)

;; Remove toolbar
(tool-bar-mode nil)

;; Increase undo size
(setq undo-limit 2000000)
(setq undo-strong-limit 3000000)

;; Save all semantic files in this directory.
(set 'semanticdb-default-save-directory "~/.emacs.d/semanticdb/")