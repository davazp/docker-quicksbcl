(defvar *dist-url* "http://beta.quicklisp.org/dist/quicklisp/2015-12-18/distinfo.txt")

(load "quicklisp.lisp")

(quicklisp-quickstart:install :path "/root/quicklisp/" :dist-url *dist-url*)

(with-open-file (out "/root/.sbclrc" :direction :output)
  (format out "(load \"/root/quicklisp\/setup.lisp\")"))

(ql:update-client :prompt nil)
(ql:update-dist "quicklisp" :prompt nil)

