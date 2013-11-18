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


(defun load-my-favorite-file ()
  "Open my favorite file:  ~.emacs.
The function is poorly named, didn't really want to 'load' it, just open it."
  (interactive)
  (find-file "~/.emacs.d/init-my-config.el"))

(global-set-key (kbd "C-x j e") 'load-my-favorite-file)

(defun reload-dot-emacs ()
  "Save the .emacs buffer if needed, then reload .emacs."
  (interactive)
  (let ((dot-emacs "~/.emacs.d/init.el"))
    (and (get-file-buffer dot-emacs)
         (save-buffer (get-file-buffer dot-emacs)))
    (load-file dot-emacs))
  (message "Re-initialized!"))
(global-set-key (kbd "C-x r e") 'reload-dot-emacs)

;;; Create a buffer to run python server and the output of the server
;;; goes into this buffer
;;; TODO change adb logcat to python server and involve virtualenv first.
(defun launch-python-server ()
  (let ((new-buffer "adb-logcat"))
  (generate-new-buffer new-buffer)
      (async-shell-command "adb logcat" new-buffer))
)

(global-set-key (kbd "C-x j s") 'jump-to-server)
(defun jump-to-server ()
  "DOCSTRING"
  (interactive)
  (let (var1)
    (switch-to-buffer "adb-logcat")
    ))



(provide 'init-my-config)
