; OBserve that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behaviour of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; if b is greater than 0 then sum, else substract a and b, basically
