#lang racket

(cons '1 '2)
;Cons function takes 2 arguments and returns a pair

(cons '1 (cons '2(cons '3 ' ())))
;First 3 and empty list forms pair then 2 and 3 forms a pair and 1 & (2 3) forms pair so result is '(1 2 3)

(cons 'abc (cons '2 (cons '(4 5 6) '())))

(list 'abc '2 '(4 5 6))
;List function always returns a list constructed from parameters instead of forming pair as in cons

(append '(abc) '(2) '(4 5 6))
;Append function always takes lists as parameters and returns the concatenation of different lists