; Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(defun myLast(list)
    (cond ((null list) (error "null list"))
          ((null (cdr list)) (car list))
          (T (last (cdr list)))))

(myLast '(1 2 3 4))
