; Find the K'th element of a list.
; The first element in the list is number 1.
; Example:
; * (element-at '(a b c d e) 3)
; C

(defun kth(list k)
    (cond ((and (= k 1) (not (null list))) (car list))
          ((and (= k 1) (null list)) (error "k > length list"))
          (T (kth (cdr list) (1- k)))))
(kth '(1 2 3 4) 3) ; -> 3
(kth '(1 2 3 4) 5) ; -> k > length list
