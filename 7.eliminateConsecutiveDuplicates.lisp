; Eliminate consecutive duplicates of list elements.
; If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
; 
; Example:
; * (compress '(a a a a b c c a a d e e e e))
; (A B C A D E)

; consecutiveRemove [] x = [x]
; consecutiveRemove [x...] x = [x...]
; consecutiveRemove [y...] x = [x, y...]
(defun consecutiveRemove(alist item)
    (cond ((null alist) (list item))
          ((equal item (car alist)) alist)
          (T (cons item alist))))

(defun compress(list)
    (reverse (reduce #'consecutiveRemove list :initial-value '())))

(compress '(a a a a b c c a a d e e e e))
