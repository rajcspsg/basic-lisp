(pushnew (uiop:getcwd) ql:*local-project-directories*)
(ql:quickload :basic-lisp)
(asdf:make :basic-lisp)
