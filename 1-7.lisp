; Newton method for cube roots

(defun cube-iter (guess x)
    (if (goodenough? guess x)
	guess
	(cube-iter (better-guess guess x) 
		   x)))
(defun square (x)
    (* x x))
(defun cube (x)
    (* x x x))
(defun better-guess (guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(defun goodenough? (guess x)
    (< (abs(- (cube guess) x)) 0.001))
(defun cube-root (x)
    (cube-iter 1.0 x))

(print (cube-root 3))
