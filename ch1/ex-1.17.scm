(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

; this recursive algo runs in linear time, implement something that runs in log n
; you can use addition, double, halve.

(define (mult a b)
  (cond ((= b 1) a)
        ((= b 0) 0)
        ((even? b) (mult (* a 2) (/ b 2)))
        (else (+ a (mult a (- b 1))))))
; this is a recursive, logarithmic time algorithm.
; Here's why it's logarithmic:

;At each recursive step, b is halved ((/ b 2)). This means the size of the problem is reduced by half with each step.
;In each step, you either double a or add a to the result, depending on whether b is even or odd.
;Since b is being halved at each step, the number of steps needed to reach the base case (b = 1) grows logarithmically with the initial value of b.
;This halving behavior resembles the behavior of logarithmic functions, where the input is continuously halved until reaching a base case.
;For example, if b is 8, you'll need 3 steps: 8 -> 4 -> 2 -> 1.
;If b is 16, you'll need 4 steps: 16 -> 8 -> 4 -> 2 -> 1.

;Each time b is doubled, it only adds one step to the process. So, even if b is very large, the number of steps needed to reach the base case grows much slower than b itself—logarithmically, in fact.

; memo:  there is a bug in this code, which I didn't notice!
; we're not taking into account zero....
; now we fixed it by adding = b 0 -> 0!
