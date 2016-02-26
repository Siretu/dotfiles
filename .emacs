; Color theme
(add-to-list 'load-path "/usr/share/emacs/site-lisp/emacs-goodies-el/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-taylor)))

; Key bindings
(global-set-key [ C-backspace ] 'backward-kill-word)
