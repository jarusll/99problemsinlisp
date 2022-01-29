; Find the number of elements of a list.

(defun myLength(list)
    (cond ((null list) 0)
          (T (1+ (myLength (cdr list))))))

(myLength '(1 2 3 4)) ; -> 4
