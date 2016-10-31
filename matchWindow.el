(defun get-buf-name-from-alive-window ()
  (setq exp "\\(?:\"\\*w3m\\*\\(?:\\(?:<\\(?:\\(?:1\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|2\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|3\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|4\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|5\\(?:00\\|[0-9]\\)\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[1-9]\\)>\\)\\)?\"\\)\\)")
  (setq buffer-name-of-alive-w3m-window "0")
  (setq tmp-list (window-list))
  (while tmp-list
    (setq buf-name (buffer-name (window-buffer (car tmp-list))))
    (string-match exp buf-name)
    (if (string= (match-string 0 buf-name) "*")
        (setq tmp-list nil))
    (setq tmp-list (cdr tmp-list))
    (if (string= (match-string 0 buf-name) "*")
        (setq buffer-name-of-alive-w3m-window buf-name))))
(get-buf-name-from-alive-window)
buffer-name-of-alive-w3m-window

(defun if-not-match-message-ok (buf)
  (if (not (string-match exp (buffer-name buf)))
      (message (buffer-name buf))))
(if-not-match-message-ok (car (buffer-list)))

(with-current-buffer buffer
  body)
(save-excursion
  (let ((origin-window (selected-window)))
    (select-window (cadr (cdr (cdr (window-list)))))
    (w3m-goto-new-session-url) (select-window origin-window)))
;;;;
