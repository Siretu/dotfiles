;Color theme
(add-to-list 'load-path "~/.emacs.d/emacs-goodies-el/")
(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/emacs-modes")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
	 (color-theme-taylor)
     )
  )
(package-initialize)

(if (version< "24.4" emacs-version)
    (progn
      (add-hook 'after-init-hook 'color-theme-taylor)
      (add-hook 'after-init-hook 'global-company-mode)))
; Key bindings
(global-set-key [ C-backspace ] 'backward-kill-word)


; Line numbers
(global-linum-mode t)
(setq linum-format "%d ")



; Other stuff
(which-function-mode 1)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)

