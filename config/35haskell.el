;; More information about the Emacs Haskell mode can be found at the
;; web page
;;   http://www.haskell.org/haskell-mode/

;; Haskell mode ====>>

(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hi$"     . haskell-mode)
                ("\\.l[hg]s$" . literate-haskell-mode))))
(autoload 'haskell-mode "haskell-mode"
   "Major mode for editing Haskell scripts." t)
(autoload 'literate-haskell-mode "haskell-mode"
   "Major mode for editing literate Haskell scripts." t)

(add-hook 'haskell-mode-hook 'imenu-add-menubar-index)
(global-set-key [(control meta down-mouse-3)] 'imenu)
(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-hugs)

;; <<==== Haskell mode

;; Useful key bindings:
;; * use \C-c\C-s to start Hugs
;; * use \C-c\C-l to load the active buffer into Hugs
;; * use \C-c\C-r for reloading
