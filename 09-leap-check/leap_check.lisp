;;;; Python program to check if a given year is leap
;;;; Created by M.V.Harish Kumar on 03-12-2023

(defun leap-year-p (year)
    (or (zerop (mod year 400))
        (and (zerop (mod year 4))
             (not (zerop (mod year 100))))))

(format t "Leap year checker~%")
(princ "Enter the year: ")
(defparameter *year* (parse-integer (read-line)))
(if (leap-year-p *year*)
    (format t "~d is a Leap year" *year*)
    (format t "~d is NOT a Leap year" *year*))
