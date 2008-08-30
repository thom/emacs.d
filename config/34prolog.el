;; Custom prolog-mode configuration

(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'swi
  prolog-program-name "swipl")
(setq auto-mode-alist (append '(("\\.plg$" . prolog-mode)
				("\\.mcy$" . mercury-mode))
			      auto-mode-alist))
