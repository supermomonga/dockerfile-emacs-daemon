(require 'server)

(progn
  (setq server-host "0.0.0.0")
  (setq server-port "1234")
  (setq server-use-tcp t)
  (setq server-auth-dir "/root/.emacs.d/serverd")
  (setq server-name (getenv "SERVER_NAME")))

(defun server-ensure-safe-dir (dir) t)

(server-start)

(let ((app-file "/root/app/app.el"))
  (if (file-exists-p app-file)
      (load-file app-file)))

(while t
  (accept-process-output nil 1))
