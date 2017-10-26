#lang racket

;setup
(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)

;question A
(define (ins_beg el lst)
  (cons el lst))

;question B
(define (ins_end el lst)
  (append lst (list el)))

;question C
(provide cout_top_level)
(define (cout_top_level lst)
  (length lst))

(cout_top_level '(a (b c)))


;question D
(define (count_instances el lst)
   (cond ((null? lst)0)
   ((equal? el (car lst))(+ 1(count_instances el (cdr lst))))
    ((count_instances el (cdr lst)))
   )
  )

;question E
(define (count_instances_tr el lst)
  (tinst el 0 lst)
 )

(define (tinst el total lst)
   (cond ((null? lst)0)
   ((equal? el (car lst))(+ 1 total(tinst el total (cdr lst))))
    ((tinst el total (cdr lst)))
    )
  )

;question F
(define (count_instances_deep item lst)
   (cond [(empty? lst) 0]
         [(equal? item (car lst)) (+ 1 (count_instances_deep item (cdr lst)))]
         [(list? (car lst)) (+ (count_instances_deep item (car lst)) (count_instances_deep item (cdr lst)))]
         [else (count_instances_deep item (cdr lst))]
    )
)

(count_instances_deep 'a '(a a a (a b)))