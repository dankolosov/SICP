(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

1. процедура перевіряє, чи число b є більшим ніж 0
2. якщо більше, то до a додамо b
3. якщо менше, то від a віднімемо b