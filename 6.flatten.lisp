; Flatten a nested list structure.
; Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
; 
; Example:
; * (my-flatten '(a (b (c d) e)))
; (A B C D E)

(defun myFlatten(list)
    (cond ((null list) '())
          ((atom (car list)) (cons (car list) (myFlatten (cdr list))))
          (T (append (myFlatten (car list)) (myFlatten (cdr list))))))

(myFlatten '((((((2) 4 (((4)))))))))
