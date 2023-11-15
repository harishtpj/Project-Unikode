;;;; Common Lisp program to check if a number is prime or not
;;;; Created by M.V.Harish Kumar on 15-11-2023
;;;; Uses the O(sqrt(n)) algorithm

(defun prime-p (n)
  (if (= n 2)
      t
      (if (< n 2)
          nil
          (let ((sqrt-num (isqrt n)))
            (loop for i from 2 to sqrt-num
                  until (zerop (mod n i))
                  finally (return (not (zerop (mod n i)))))))))

(format t "Prime numbers Checker~%~%")
(princ "Enter the number to check for prime: ")
(defparameter *n* (parse-integer (read-line)))
(if (prime-p *n*)
    (format t "~d is Prime~%" *n*)
    (format t "~d is NOT Prime~%" *n*))