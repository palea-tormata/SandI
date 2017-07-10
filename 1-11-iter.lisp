; a <- a + 2*b + 3*c
; b <- a
; c <- b
; f(0) = 0, f(1) = 1, f(2) = 2
; f(3) = f(2) + 2*f(1) + 3*f(0)

(defun f (n)
    (iterf 2 1 0 n ))

(defun iterf (a b c count)
    (if (= count 0) c
         (iterf (+ a (* 2 b) (* 3 c))
                a
                b
                (- count 1))))
