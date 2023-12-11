#|
    Define the LISP function SORT_MERGE that takes as input two lists, L1 and L2, and
    returns a single sorted list having all and only the elements of L1 and L2.
|#

(define sort-merge(lambda (L1 L2)
    (mysort (mymerge L1 L2))
))

; We assume, for simplicity, that L1 is not a null list
(define mymerge(lambda (L1 L2)
    (cond ((null? L2) L1)
        (#t (cons (car L2) (mymerge L1 (cdr L2))))
    )
))

; If we wanted to assume that L2 is not a null list
(define mymerge2(lambda (L1 L2)
    (cond ((null? L1) L2)
         (#t (cons (car L2) (mymerge (cdr L1) L2)))
    )
))

(define mysort(lambda (L)
    (cond ((null? L) L)      ; in case L is a null list, i.e. '()
         (#t (cons (mymin L) (mysort (mydel L (mymin L))))))   
))

(define mymin(lambda (L)
    (cond ((null? (cdr L)) (car L))
         ((< (car L) (cadr L)) (mymin (cons (car L) (cddr L))))
         (#t (mymin (cdr L))))
))

(define mydel(lambda (L a)
    (cond ((null? L) L)
         ((eq? (car L) a) (cdr L))
         (#t (cons (car L) (mydel (cdr L) a))))
))

; Test case
(define l1 '(5 4 3 2 1))
(define l2 '(9 4 7 2 8))
(sort-merge l1 l2)