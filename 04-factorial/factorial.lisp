;;;; Common Lisp program to compute factorial
;;;; Created by M.V.Harish Kumar on 15-11-2023

(defun factorial (n acc)
  (if (<= n 1)
      acc
      (factorial (1- n) (* acc n))))

(format t "Enter value for `n`: ")
(defparameter *n* (parse-integer (read-line)))
(format t "~d! = ~d" *n* (factorial *n* 1))
