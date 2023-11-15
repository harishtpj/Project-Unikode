;;;; Common Lisp program to generate multiplication tables
;;;; Created by M.V.Harish Kumar on 15-11-2023

(defun generate-tables (number times)
  (format t "~d Tables~%~%" number)
  (loop for i
        from 1
          to times
        do (format t "~d x ~d = ~d~%" number i (* number i))))

(format t "Enter the no. to generate tables: ")
(defparameter *n* (parse-integer (read-line)))
(format t "Enter the no. till which to generate: ")
(defparameter *t* (parse-integer (read-line)))
(generate-tables *n* *t*)
