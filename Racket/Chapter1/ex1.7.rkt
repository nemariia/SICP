#lang sicp
(#%require rackunit)

(define (good-enough? improved guess)
	(< (abs (- improved guess)) 0.000000001))

(define (average x y)
	(/ (+ x y) 2))

(define (improve guess x)
	(average guess (/ x guess)))

(define (sqrt-iter guess x)
	(if (good-enough? (improve guess x) guess)
	guess
	(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))