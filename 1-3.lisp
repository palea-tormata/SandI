;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers. 

(defun sumsq (x y) (+ (* x x) (* y y)))
(defun ss (x y z)
    (cond ( (and (< x y) (< x z)) (sumsq y z) )
	  ( (and (< z x) (< z y)) (sumsq x y) )
          ( (and (< y x) (< y z)) (sumsq x z) )
     )
)
