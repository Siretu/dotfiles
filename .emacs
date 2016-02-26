;Color theme
(add-to-list 'load-path "~/.emacs.d/emacs-goodies-el/")
(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/modes")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (if (version< emacs-version "24.4")
	 (color-theme-taylor)
       (load-theme 'wheatgrass t))
     )
  )

(add-hook 'after-init-hook (lambda () (color-theme-taylor)))
; Key bindings
(global-set-key [ C-backspace ] 'backward-kill-word)
