;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
             '("popkit" . "https://elpa.popkit.org/packages/") t)

(add-to-list 'load-path "~/.emacs.d/lisp")

(package-initialize)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(require 'move-text)
(move-text-default-bindings)
(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)
(require 'ido)
(ido-mode t)
(require 'auto-complete)
(global-auto-complete-mode t)

;; enable clipborad in emacs
(setq x-select-enable-clipboard t)

;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (undo-tree python-mode move-text virtualenvwrapper virtualenv material-theme jedi better-defaults anaconda-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
