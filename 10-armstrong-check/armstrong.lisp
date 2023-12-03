;;;; Python program to check if the given number is armstrong
;;;; Written by M.V.Harish Kumar on 03-12-2023

(defun sum-of-exp-digits (num)
    (let ((len (length num)))
        (loop for d across num
            sum (expt (digit-char-p d) len))))

(princ "Enter a number: ")
(defparameter *num* (read-line))
(if (= (sum-of-exp-digits *num*) (parse-integer *num*))
    (format t "~d is a Armstrong number" *num*)
    (format t "~d is NOT a Armstrong number" *num*))