(defun recf (n)
    (if (< n 3) n
        (+ (recf (- n 1))
           (* 2 (recf (- n 2)))
           (* 3 (recf (- n 3))))))
