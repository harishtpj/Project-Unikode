;;;; Common Lisp program to sum numbers from 1 to n
;;;; Created by M.V.Harish Kumar on 15-11-2023

(defun sum-to-n (n)
  (loop for i 
        from 1 
          to n
        sum i))

(format t "Enter value for `n`: ")
(defparameter *n* (parse-integer (read-line)))
(format t "The sum from 1 to ~d is ~d" *n* (sum-to-n *n*))
