; Find the last but one box of a list.
; Example:
; * (my-but-last '(a b c d))
; (C D)

(defun myButLast(list)
    (cond ((null list) (error "null list"))
          ((null (cdr list)) (error "atleast 2 elements required"))
          ((null (cddr list)) (car list))
          (T (myButLast (cdr list)))))
(myButLast '(1 2 3))
