;; init.el

;; Copyright (c) 2008 Thomas Weibel

;; This file contains startup code needed to load the rest of the
;; Emacs configuration from the .emacs.el.d directory, plus the Emacs
;; "customization" system preferences.

;; Costum variables
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(scroll-bar-mode (quote right))
 '(user-full-name "Thomas Weibel")
 '(user-mail-address "thom@beeblebrox.net"))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Pull in split configuration
(add-to-list 'load-path "~/.emacs.d/config")
(require 'startup)
(run-directories "~/.emacs.d/config")
