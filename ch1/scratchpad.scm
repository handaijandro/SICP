(define (factorial x)
  (if (= x 1)
    1
    (* x (factorial (- x 1 )))))
; this is a recursive procedure that defines a linear recursive process. O(n) time O(n) memory.

(define (fact-iter n)
  (define (iter count mult)
    (if (> count n)
      mult
      (iter (1+ count) (* count mult))))
  (iter 1 1))
; tail recursive implementation of factorial. O(n) time and (O(1)) memory

(define (is-even? x)
  (= (remainder x 2) 0))
(define (exp b n)
  (cond ((= n 0) 1)
        ((= n 1) b)
        ((is-even? n) (square (exp b (/ n 2))))
        (else (* b (exp b (- n 1))))))

