;;;; Python program to generate mersenne numbers
;;;; Created by M.V.Harish Kumar on 03-12-2023

(defun mersenne-list (n)
    (loop for i
          from 1
          to n
          collect (1- (expt 2 i))))

(princ "Number of mersenne numbers to generate: ")
(defparameter *n* (parse-integer (read-line)))
(format t "The first ~d mersenne numbers are:" *n*)
(print (mersenne-list *n*))