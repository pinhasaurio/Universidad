#lang racket

(define (generate n)
        (generate-for n 1)
  )

(define (generate-for n i)
    (if (<= i n) 
        (cons i (generate-for n (+ i 1)));#t
        (list);#f
        
        )
  )
(print (generate 4))

;1) Haga una función que vaya restando de izquierda a derecha todos los números de una lista. 
;Ejemplo ‘(1 2 3) = -1 -2 -3 = -6

(define (restLeftRight l)
        (if (null? l)
            0;t
            (+ (* (car l) -1) (restLeftRight (cdr l)))                ;f
            )
        
  )

(print (restLeftRight '(1 2 3)))

;2. Haga una función que devuelva el número negativo de cada número de una lista.

(define (negativeWay l)
     (cond
       [(null? l) l]
       
       [(negative? (car l)) (cons (car l) (negativeWay (cdr l))) ]
       [else (cons (* (car l) -1) (negativeWay (cdr l)))]

     )


)
(print (negativeWay '(1 2 3)))