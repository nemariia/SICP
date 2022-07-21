#lang sicp
(#%require rackunit)

(define (sum_of_sq_of_biggest a b c)
	(+ 
		(* (if (> a b) a b) (if (> a b) a b))
		(cond ((< (if (< a b) a b) c) (* c c))
		(else (* (if (< a b) a b) (if (< a b) a b))))))