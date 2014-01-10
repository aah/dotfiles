(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/saw")

(load "00-common-setup.el")
(load "01-ruby.el")
(load "02-evil.el")
