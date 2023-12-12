#|
    As a follow up of ex1.scm, this file contains some extensions of the functions implemented 
    in the aforementioned file.
    These exercises were invented by me.
|#

; Deletes all the occurrences of a given element from a given list.
(define del_all (lambda (L a)
    (cond
        ( (null? L) L )
        ( (eq? (car L) a) (del_all (cdr L) a) )
        ( #t 
                (cons (car L) (del_all (cdr L) a) ))
    )
))