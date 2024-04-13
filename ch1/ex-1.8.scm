(define (cube-iter guess x)
  (display "these are my variables")
  (display guess)
  (display x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x)
               x)))

(define (good-enough? y x)
  ( < (abs(- (cube y) x)) 0.00001))    

(define (cube a) (* a a a))
(define (sq a) (* a a))

(define (average a b) (/ (+ a b) 2))
(define (improve y x)
  (/ (+ (* 2 y) (/ x (sq y)))
     3))
(define (cb a) (cube-iter 1.0 a))



  ; better approx is given by (x/y^2+2y)/3
