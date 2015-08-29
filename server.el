(require 'server)

(progn
  (let ((my/server-host (or (getenv "SERVER_HOST") "0.0.0.0"))
        (my/server-port (or (getenv "SERVER_PORT") "1234"))
        (my/server-name (or (getenv "SERVER_NAME") "emacs_server")))
    (setq server-host my/server-host)
    (setq server-port my/server-port)
    (setq server-name my/server-name)
    (setq server-use-tcp t)
    (setq server-auth-dir "/root/serverd")))

(defun server-ensure-safe-dir (dir) t)

(server-start)

(let ((app-file "/root/app/app.el"))
  (if (file-exists-p app-file)
      (load-file app-file)))

(while t
  (accept-process-output nil 1))
