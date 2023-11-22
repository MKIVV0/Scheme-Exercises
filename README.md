# Scheme
This repository contains the solution of the exercises seen in the section of Functional Languages, in the Software Engineering Fundamentals course, which is part of the master's degree course in Computer Science, at the University of Insubria.
The language used here is Scheme, a dialect of Lisp, and only the basic concepts are treated here.<br />
The exercises are specified as follows:<br />
## Exercise 1
Define the SCHEME function SORT_MERGE that takes as input two lists L1 and L2 and
returns a sorted list having the elements of L1 and L2. <br />

## Exercise 2
Define a SCHEME function that takes as input a list of pairs of atoms and returns a pair of
lists in which all the first elements of the input pairs are in the first list and all the
second elements of the input pairs are in the second list.<br />
E.g., Input: ((1 0) (2 5) (3 7)) Output: ((1 2 3) (0 5 7))

## Exercise 3
Define a SCHEME function that takes as input a list L of atoms and returns a parsed
version of L as shown by the following examples:<br />
1. (parse ‘()) -> ()
2. (parse ‘(a b)) -> ((a 1) (b 1))
3. (parse ‘(a b b b a d d)) -> ((a 2) (b 3) (d 2))

## Exercise 4
Define a SCHEME function that takes as input a list of pairs of integers and returns a pair
of integers in which the first element is the sum of all input first elements, while the
second element is the average of all input second elements.<br />

## Exercise 5
Define a SCHEME function that takes as input a list of integers and returns a pair in which
the first elements is the length of the input list and the second element is the
maximum among the input elements.<br />
E.g., Input: (1 3 54 7 2 8 65); Output: (7 65)

## Exercise 5
Define a SCHEME function that takes as input a list of integers and returns a pair in which
the first elements is the length of the input list and the second element is the
maximum among the input elements.<br />
E.g., Input: (1 3 54 7 2 8 65); Output: (7 65)

## Exercise 6
Given the following SCHEME function, assuming that X and Y are two lists of atoms and
that each of them does not contain multiple identical atoms<br />
(define foo (lambda(X, Y) <br />
  (cond ((null? X) Y) <br />
        ((member (car X) Y) <br />
        (#t (cons (car X) (foo (cdr X) Y)) <br />
  ))) <br />

a) Which function is computed by foo?
b) How can the decision coverage criteria be applied to this program?
c) Is it possible to use a single data test? If yes, provide an example.

## Exercise 7
Given the following SCHEME function<br />
(define TEST (lambda (X Y) <br />
  (cond ((null? X) 'NIL) <br />
  ((>= (car X) Y) (TEST (cdr X) Y)) <br />
  (#t (cons (car X) (TEST (car X) Y)) <br />
)))
<br />
1) Which function is computed by TEST
2) Modify PROVA so that it works also when X is a list of lists of atoms and Y a list
of atoms
