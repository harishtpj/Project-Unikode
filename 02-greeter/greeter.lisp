;;;; Simple Greeter program in Common Lisp
;;;; Created by M.V.Harish Kumar on 15-11-2023

(format t "Please enter your name: ")
(defparameter *name* (read-line))
(format t "Hello, ~a! Hope you're fine" *name*)