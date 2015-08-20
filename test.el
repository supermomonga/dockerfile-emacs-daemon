
(progn
  (require 'server)
  (setq server-host "0.0.0.0")
  (setq server-port "1234")
  (setq server-use-tcp t)
  (setq server-name "emacs_server")
  (setq server-auth-dir "/Users/momonga/Develops/dockerfile-emacs-daemon/serverd/")
  )

(server-eval-at "emacs_server" "(+ 1 10)")

(server-running-p)
