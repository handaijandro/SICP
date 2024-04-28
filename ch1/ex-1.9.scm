; determine whether these procedures are iterative or recursive.

(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))
; this would be for example for 2 + 2
; (+ 2 2)
; (inc (+ 1 2))
; (inc (inc (+ (0 2))))
; (inc (inc (2)))
; (inc (3))
; (4)

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))
; (+ 2 2)
; (+ 1 3)
; (+ 0 4)
; 4


; A: These are both recursive procedures, but the top one is linear recursive process, and the bottom is linear iterative process 
; (a.k.a tail recursive)
