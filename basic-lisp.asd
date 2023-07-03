(defsystem "basic-lisp" 
  :depends-on (#:clack #:ningle #:clack-handler-hunchentoot) 
  :components ((:module "src"
                :components ((:file "main"))))
  :build-operation "program-op"
  :build-pathname  "build-rest-test"
  :entry-point     "basic-lisp::main")
