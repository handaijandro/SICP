(define (f-rec n)
  (if (< n 3)
        n
        (+ (f-rec (- n 1))
           (* 2 (f-rec (- n 2)))
           (* 3 (f-rec (- n 3))))))

(define (f-iter n)
  (define (iter acc1 acc2 acc3 count)
    (cond ((= n 1) 1)
          ((= n 2) 2)
          ((> count n) acc1)
          (else (iter (+ acc1 (* 2 acc2) (* 3 acc3)) acc1 acc2 (+ count 1)))))
  (iter 2 1 0 3)
  )
;#took me like 30 mins but the above code is the answer


