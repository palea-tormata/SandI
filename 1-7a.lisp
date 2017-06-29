; Newton method for cube roots with lexical scoping
(defun cube (x)
  (* x x x))
(defun square(x)
    (* x x))

(defun cube-root (x)
    (defun goodenough? (guess)
      (< (abs(- (cube guess) x)) 0.001))
    (defun better-guess (guess)
       (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    (defun cube-iter (guess)
      (if (goodenough? guess)
           guess
	   (cube-iter (better-guess guess))))
(cube-iter 1.0))

(print (cube-root 3))
