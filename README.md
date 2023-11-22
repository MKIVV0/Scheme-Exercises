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
