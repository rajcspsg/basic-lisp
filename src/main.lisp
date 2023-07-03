(defpackage #:basic-lisp 
  (:use :cl))


(in-package #:basic-lisp)

(defvar x 10)

(ql:quickload :clack)
(ql:quickload :ningle)

;(defvar app (make-instance 'ningle:app'))

(defvar app (make-instance 'ningle:app))

(setf x 20)

(setf (ningle:route app "/hello") 
      "hey there")
(setf (ningle:route app "/:limit" :method :get) 
      #'(lambda (params) 
          (let ((limit (cdr (assoc :limit params)))) 
            (handler-case 
              (format nil "~a" (random (parse-integer limit))) 
              (error () (format nil "Invalid input ~a" limit))))))

      
(defun main () 
  (clack:clackup app :port 5500) 
  (loop))


