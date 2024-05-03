
(define (is-even? x)
  (= (remainder x 2) 0))

(define (exp-iter x y)
  (define (exp b n a)
    (cond ((= n 1) a)
          ((is-even? n) (exp b (/ n 2) (* a (square b))))
          (else (exp b (- n 1) (* a b)))))
  (exp x y 1))
