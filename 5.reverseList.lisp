; Reverse a list.

(defun myReverse(list)
    (reduce (lambda (a b)(cons b a)) list :initial-value '()))

(myReverse '(1 2 3 4)) ; -> (4 3 2 1)
