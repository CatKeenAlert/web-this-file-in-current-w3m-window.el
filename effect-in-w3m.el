(defun w3m-session-match (buf-name)
  (setq buffer-name-of-alive-w3m-window nil)
  (if (string= buf-name "*w3m*")
      (setq buffer-name-of-alive-w3m-window "*w3m*"))
  (setq limit-loop 38)
  (if (not buffer-name-of-alive-w3m-window)
      (loop for index-loop from 1 to limit-loop do
            (if (string= buf-name
                         (concat "*w3m*<" (int-to-string index-loop) ">"))
                (setq buffer-name-of-alive-w3m-window buf-name))
            (if buffer-name-of-alive-w3m-window
                (setq index-loop (+ 1 limit-loop))))))
;;(w3m-session-match "*w3m*")
;;buffer-name-of-alive-w3m-window

(defun effect-in-w3m ()
  (interactive)

  (setq-default buffer-name-of-alive-w3m-window nil)
  (setq-default tmp-list (window-list))
  (while tmp-list
    (setq-default buf-name (buffer-name (window-buffer (car tmp-list))))
    (w3m-session-match buf-name)
    ;;buffer-name-of-alive-w3m-window
    ;;(setq-default buffer-name-of-alive-w3m-window "*w3m*<4>")
    (if buffer-name-of-alive-w3m-window
        (setq-default tmp-list nil))
    (setq-default tmp-list (cdr tmp-list))
    ;;(if buffer-name-of-alive-w3m-window
    ;;(setq-default buffer-name-of-alive-w3m-window buf-name)
    )

  (save-buffer)
  (save-excursion
    (setq-default editting-buffer-file-name (buffer-file-name))
    (setq-default editting-window (selected-window))
    ;;(get-buf-name-from-alive-window)
    (select-window (get-buffer-window (get-buffer
                                       buffer-name-of-alive-w3m-window)))
    ;;(select-window w3m-window)
    ;;(w3m-buffer-file-name)
    (w3m-goto-url (concat "http://192.168.0.6/href-direr/direr/entrysin.direr.php?p=" editting-buffer-file-name)))
  (select-window editting-window))

;;(commandp 'effect-in-w3m)
;;(effect-in-w3m)
(global-set-key (kbd "C-M-3") 'effect-in-w3m)
