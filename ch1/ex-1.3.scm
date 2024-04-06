(define (square n) (* n n))
(define (sum_squares x y) (+ (square x) (square y)))
(define (sum-of-largest-two a b c)
  (cond
    (not (and (> a b) (> a c)) (sum_squares b c)) 
    (not (and (> b a) (> b c)) (sum_squares a c))
    (else (sum_squares a b))
    )
  )
