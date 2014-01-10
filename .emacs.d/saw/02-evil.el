(global-evil-leader-mode 1)
(evil-mode 1)

(evil-leader/set-leader ",")

(evil-leader/set-key
  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window
  "3" 'split-window-horizontally
  "e" 'find-file
  "f" 'projectile-find-file
  "b" 'projectile-switch-to-buffer
  "q" 'kill-buffer-and-window
  "w" 'evil-write
  "," 'evil-buffer)

(define-key evil-normal-state-map (kbd "C-n") 'evil-next-line)
(define-key evil-normal-state-map (kbd "C-p") 'evil-previous-line)
(define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
(define-key evil-normal-state-map (kbd "C-a") 'evil-beginning-of-line)
