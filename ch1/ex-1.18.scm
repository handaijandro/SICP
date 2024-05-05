; now do the previous exercise but do it iteratively.
(define (mult x y)
  (define (iter a b c)
    (cond ((= b 0) 0) 
          ((= b 1) (+ c a))
          ((even? b) (iter (* a 2) (/ b 2) c))
          (else (iter a (- b 1) (+ c a)))))
  (iter x y 0))
; this was easy, and I got the solution correct on the first try, but 
;becasue of a syntax error (because I didn't define double, I did 
;* a 2, and I defined * in my first procedure definition
; anyways, I got this right the first time technically. 
