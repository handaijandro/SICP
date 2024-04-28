; pascal's triangle item generation.
(define (pascal x y)
  (cond ((= x 0) 1)
        ((= x y) 1)
        (else (+ (pascal (- x 1) (- y 1))
                 (pascal x (- y 1))))))

