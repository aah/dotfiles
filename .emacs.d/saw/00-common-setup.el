;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
                 "~/.emacs.d/.cask/24.3.1/elpa/auto-complete-20131128.233/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

(require 'smartparens-config)
 (require 'smartparens-ruby)
 (smartparens-global-mode)
 (show-smartparens-global-mode t)
 (sp-with-modes '(rhtml-mode)
   (sp-local-pair "<" ">")
   (sp-local-pair "<%" "%>"))

(require 'grizzl)
 (projectile-global-mode)
 (setq projectile-enable-caching t)
 (setq projectile-completion-system 'grizzl)


(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
