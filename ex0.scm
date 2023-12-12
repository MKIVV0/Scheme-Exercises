#|
    This is a group of exercises defined by me, just to get the hang of Scheme.
    This particular indentation is done on purpose, so that it's easier to read.
|#

; 1) Factorial function.
#| As for the inductive case:
#  the operator * is a function that takes two parameters; in this particular
#  case, x and the following expression, i.e. (fact (- x 1)). The same reasoning 
# applies the latter expression.
# If we want to consider an expression as an argument, then it has to be written  
# between parenthesis, so that it is first evaluated, and then used as an argument by 
# the external expression.
|#
(define factorial (lambda (x)
    (cond
        ( (eq? x 0) 1 )                     ; base case
        ( #t 
                (* x (fact (- x 1)) ) )     ; inductive case
    )
))

; 2) Sum function.
; Given a lower-bound and an upper-bound, starting from the former, sum up all the values.
#| 
# It is assumed that lower < upper, so this case is not treated. 
#  Another reason is to maintain an inductive structure, which comprises one (or more) base case(s)
# and an inductive case.
|#
(define sum (lambda (lower upper)
    (cond
        ( (eq? lower upper) upper )                        ; base case
        ( #t 
                (+ lower (sum (+ lower 1) upper) ) )       ; inductive case
    )
))

; 3) Multiplication function.
; Same as above. The only difference is that the operator * is function, instead of the + function. 
; As for the above function, it is assumed that lower < upper, so this case is not treated.
(define mult (lambda (lower upper)
    (cond
        ( (eq? lower 0) (- 1) )                           ; base case #1
        ( (eq? lower upper) upper)                        ; base case #2
        ( #t   
                (* lower (mult (+ lower 1) upper) ))      ; inductive case
    )
))

; 4) Function for summing up the factorials in a given number range.
; Given a lower-bound and an upper-bound, the factorial of each number
; is summed up.
(define sum_factorials (lambda(a b)
    (cond 
        ( (eq? a b) (factorial b) )                                 ; base case
        ( #t 
                ( + (factorial a) (sum_factorials (+ a 1) b) ))     ; inductive case
    )
))