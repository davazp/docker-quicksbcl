FROM davazp/sbcl:1.2.3
MAINTAINER David Vázquez <davazp@gmail.com>

ENV HOME /root

WORKDIR /tmp/
RUN wget http://beta.quicklisp.org/quicklisp.lisp
ADD install.lisp /tmp/install.lisp

RUN sbcl --non-interactive --load install.lisp

WORKDIR /root
