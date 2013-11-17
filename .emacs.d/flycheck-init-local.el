(projectile-global-mode)
(add-hook 'java-mode-hook 'projectile-on)
(set-default-font "Ubuntu Mono derivative Powerline 14")

(setq split-height-threshold nil)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/"            ;; personal snippets
        "/path/to/some/collection/"      ;; just some foo-mode snippets
        "/path/to/some/othercollection/" ;; some more foo-mode and a complete baz-mode
        "/path/to/yasnippet/snippets"    ;; the default collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.(setq split-width-threshold 0)

(global-set-key (kbd "C-M-/") 'my-expand-file-name-at-point)
(defun my-expand-file-name-at-point ()
  "Use hippie-expand to expand the filename"
  (interactive)
  (let ((hippie-expand-try-functions-list '(try-complete-file-name-partially try-complete-file-name)))
    (call-interactively 'hippie-expand)))

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
(require 'android)

(setq show-trailing-whitespace nil)

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))
