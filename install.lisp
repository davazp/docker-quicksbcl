(defvar *dist-url* "http://beta.quicklisp.org/dist/quicklisp/2014-07-14/distinfo.txt")

(load "quicklisp.lisp")

(quicklisp-quickstart:install :path "/root/quicklisp/" :dist-url *dist-url*)

(with-open-file (out "/root/.sbclrc" :direction :output)
  (format out "(load \"/root/quicklisp\/setup.lisp\")"))
