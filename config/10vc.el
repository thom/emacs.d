;; Configure VC

(add-to-list 'load-path "~/.emacs.d/vendor/git-emacs")
(add-to-list 'load-path "~/.emacs.d/vendor/gitsum")
(add-to-list 'load-path "/usr/share/doc/git-core/contrib/emacs")

(require 'vc)
(require 'ediff)
(require 'vc-git)
(require 'git-emacs)
(require 'gitsum)

(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'git))
;;(require 'git)
;;(autoload 'git-blame-mode "git-blame"
;;  "Minor mode for incremental blame for Git." t)