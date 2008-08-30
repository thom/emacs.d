;; Enable backup files.
(setq make-backup-files t)

;; Enable versioning with default values (keep five last versions, I think!)
;(setq version-control t)
(setq delete-old-versions t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))