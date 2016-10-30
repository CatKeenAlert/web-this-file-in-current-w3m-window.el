(window-list)
(length (window-list))
(car (window-list)) #<window 80 on matchWindow.php>
(cadr (window-list))
(cadr (cdr (window-list)))

(if ())

(setq foo (car (window-list)))
(if (> (length (window-list)) 0)
    )

(defun if-match-push-element-to-bar (foo)
  "if-match-push-t-element-to-bar"
  (interactive)
  (setq bar nil)
  (if (string-match "\\(?:\\*w3m\\*\\(?:<\\(?:\\(?:1[02]\\|32\\|4\\)>\\)\\)?\\)" foo)
      (push foo bar)))
(if-match-push-element-to-bar "*w3m*")
bar


(setq bar nil)
(mapc (window-list)
      (if (string-match "\\(?:\\*w3m\\*\\(?:<\\(?:\\(?:1[02]\\|32\\|4\\)>\\)\\)?\\)" "*w3m*<3>")

          ;;(push  (window-list) bar)
                                        ;(push  foo bar)
          (setq geted-window "*w3m*<3>")
        ;;(push  geted-window bar))
        ;;(message "%s" foo)
        )
      )

bar
bar
(current-buffer)
(substring "<*w3m*>>" 0 (-(length "<*w3m*>>") 1))

(push  "#<window 80 on matchWindow.php>"  bar)

;;     (setq geted-window (get-buffer-window (get-buffer "*help*")))
;;setq geted-window (get-buffer-window (get-buffer "*Help*")))
;;setq geted-window (get-buffer-window (get-buffer "*todo_1026.org*")))
;;setq geted-window (get-buffer-window (get-buffer "*hello.elisp*")))
;;setq geted-window (get-buffer-window (get-buffer "*w3m*<2>")))
;;setq geted-window (get-buffer-window (get-buffer "*w3m*<3>")))
;;setq geted-window (get-buffer-window (get-buffer "*w3m*<3>")))
;;setq geted-window (substring geted-window 0 (-(length geted-window) 1)))
;;setq geted-window (buffer-name(geted-window)))
;;(setq geted-window (buffer-name foo))
(substring (current-buffer) 0 3)
(get-buffer-window (get-buffer "*fundamental*"))
(get-buffer-window (get-buffer "*w3m*<3>"))
(get-buffer-window-list (get-buffer "*w3m*"))


(stringp (buffer-name (car (buffer-list))))
(car(window-list))


(setq exp "\\(?:\"\\*w3m\\*\\(?:\\(?:<\\(?:\\(?:1\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|2\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|3\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|4\\(?:0[0-9]\\|1[0-9]\\|2[0-9]\\|3[0-9]\\|4[0-9]\\|5[0-9]\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[0-9]\\)\\|5\\(?:00\\|[0-9]\\)\\|6[0-9]\\|7[0-9]\\|8[0-9]\\|9[0-9]\\|[1-9]\\)>\\)\\)?\"\\)\\)")

(defun if-match-message-buffer-name (buf)
  (if (string-match exp (buffer-name (get-buffer buf)))
      (message (buffer-name buf))))
(if-match-message-buffer-name (car (buffer-list)))
(if-match-message-buffer-name "*w3m*")

(get-buffer "*w3m*")
(stringp (buffer-name (get-buffer "*w3m*")))
(setq buf-name (buffer-name (get-buffer "*w3m*<13>")))
(string-match exp buf-name)
(if (string= (match-string 0 buf-name) "*")
    (message "ok")
  (message "not-ok"))




(let ((bar nil))
  (dolist (foo '(1 2 3) bar)
    (push (incf foo) bar)))

(defun looptest2 ()
  (setq i-list '(a b c d e f g))
  (loop for i in i-list  do
        (format *query-io* "~a  " i))
  )
(looptest2)

(loop for x in (buffer-list) do
      (format *scratch* "~a::" x))

(defun looptest1 (num)
  (loop for i from 1 to 10  do
        (setq num (+ num 1)))
  (message (int-to-string num))
  )
(looptest1 0)

(let ((bar nil))
  (dolist (foo '(1 2 3) bar)
    (push (incf foo) bar)))

;;看不到遍历效果
;;(let ((string-buffers "hello"))
;;  (dolist (foo (buffer-list))
;;    (setq string-buffers (concat string-buffers (buffer-name foo)))))
;;string-buffers

(defun if-not-match-message-ok (buf)
  (if (not (string-match exp (buffer-name buf)))
      (message (buffer-name buf))))
(if-not-match-message-ok (car (buffer-list)))

(with-current-buffer buffer
  body)

(if (not (string-match "\\*>" (buffer-name (car (buffer-list)))))
    (message "ok")
  )
"*w3m*"
(regexp-opt '("#<buffer *w3m*<10>>" "#<buffer *w3m*<32>>" "#<buffer *w3m*>" "#<buffer *w3m*<2>>"))
"\\(?:#<buffer \\*w3m\\*\\(?:\\(?:<\\(?:\\(?:10\\|3?2\\)>\\)\\)?>\\)\\)"
(regexp-opt '("#<buffer *w3m*<10>>" "#<buffer *w3m*<32>>" "#<buffer *w3m*>" "#<buffer *w3m*<2>>"))
(dolist (foo (window-list))
  ;;(if (string-match "\\(?:\\*w3m\\*\\(?:<\\(?:\\(?:1[02]\\|32\\|4\\)>\\)\\)?\\)" "*w3m*<1>") (message "ok"))
  (if (string-match "\\(?:\\*w3m\\*\\(?:<\\(?:\\(?:1[02]\\|32\\|4\\)>\\)\\)?\\)" foo) (message "ok"))
;;;
  (save-excursion
    (let ((origin-window (selected-window)))
      (select-window (cadr (cdr (cdr (window-list)))))
      (w3m-goto-new-session-url) (select-window origin-window)))
;;;;
