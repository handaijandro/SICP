(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
; this fails in some cases(such as sqrt-iter) because lisp uses applicative order evaluation, so it will evaluate both clauses before calling the new-if, the regular if is an exception because it's a "special form" 
