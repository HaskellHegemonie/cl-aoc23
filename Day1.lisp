(require :str)
(defpackage :AOC23D1
	(:use :cl :uiop))
(in-package :AOC23D1)

(defmacro λ (&rest rest)
	`(lambda ,@rest))

(let
		((lines (map 'list (λ (l) (coerce l 'list)) (uiop:read-file-lines #P"~/common-lisp/AOC2023/inputs/Day1"))))
	(loop :for l :in lines
				:sum
				(flet
						((f (lx)
							 (nth-value 0 (read-from-string (coerce (cons (car lx) (last lx)) 'string)))))
					(f (remove-if-not #'digit-char-p l)))))
