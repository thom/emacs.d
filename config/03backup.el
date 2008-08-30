;; Enable backup files.
(setq make-backup-files t)

;; Enable versioning with default values
;(setq version-control t)
(setq delete-old-versions t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
