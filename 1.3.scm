(define (mathSquare n) 
    (* n n)
)

(define (sumOfTwoNumbersSquare n1 n2)
    (+ (mathSquare n1)(mathSquare n2))
)

(define (sumOfSquaresOfTwoHighestNumbers n1 n2 n3)
    (cond 
        ((and (>= n1 n2) (>= n2 n3)) (sumOfTwoNumbersSquare n1 n2))
        ((and (>= n1 n3) (>= n3 n2)) (sumOfTwoNumbersSquare n1 n3))

        ((and (> n2 n3) (> n3 n1)) (sumOfTwoNumbersSquare n2 n3))
        ((and (> n2 n1) (> n3 n2)) (sumOfTwoNumbersSquare n2 n3))

        ((and (> n3 n1) (> n2 n1)) (sumOfTwoNumbersSquare n3 n2))
        ((and (> n1 n2) (> n3 n2)) (sumOfTwoNumbersSquare n1 n3))
        (else 0)
    )
)

(sumOfSquaresOfTwoHighestNumbers 3 2 1)