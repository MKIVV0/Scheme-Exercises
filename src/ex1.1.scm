#|
    As a follow up of ex1.scm, this file contains some extensions of the functions implemented 
    in the aforementioned file.
    These exercises were invented by me.
|#

; 1) Delete all the occurrences of a given element from a given list.
(define del_all (lambda (L a)
    (cond
        ( (null? L) L )
        ( (eq? (car L) a) (del_all (cdr L) a) )
        ( #t 
                (cons (car L) (del_all (cdr L) a) ))
    )
))

; 2) Sort a given list in a descending order.
; To do this exercise, a top-down approach is used.
(define sort_desc (lambda (L)
    (cond
        ( (null? L) L )
        ( #t 
                (cons (my_max L) 
                                    ( sort_desc ( my_del L (my_max L) )) ) 
        ) 
    )
))  

; Just for exercise, my_del is reimplemented.
(define my_del (lambda (L a) 
    (cond
        ( (null? L) L )
        ( (eq? (car L) a) (cdr L) )
        ( #t 
                (cons (car L) (my_del (cdr L) a) ))
    )
))

; Function for finding the maximum element in a given list
(define my_max (lambda (L)
    (cond
        ( (null? (cdr L) ) (car L) )
        ( ( > (car L) (cadr L) ) 
                                    (my_max (cons (car L) (cddr L)) ))
        ( #t (my_max (cdr L) ))
    )
))

; 3) Using the functions above, define a function that merges three given lists and returns the 
;    resulting list sorted in a descending order.
; Assumption: L2 and L3 are not null.
(define sort_three (lambda (L1 L2 L3)
    ( sort_desc(merge_three L1 L2 L3) ) 
))

(define merge_three (lambda (L1 L2 L3)
    (cond
        ( (null? L1) (my_merge L2 L3) )
        ( #t 
                (cons (car L1) (merge_three (cdr L1) L2 L3) ))
    )
))

; Again, as an exercise, my_merge is reimplemented.
; We assume that L2 is never null.
(define my_merge (lambda (L1 L2)
    (cond
        ( (null? L1) L2)
        ( #t 
                ( cons (car L1) (my_merge (cdr L1) L2) ))
    )
))