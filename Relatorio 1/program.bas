REM Exercicio 1
10 PRINT "entre com os valores de a, b, c: "
20 INPUT "a: "; a
30 INPUT "b: "; b
40 INPUT "c: "; c
50 LET d = b * b - 4 * a * c
60 LET x1 = (-b + SQR(d)) / (2 * a)
70 LET x2 = (-b - SQR(d)) / (2 * a)
80 PRINT "resultado de x1: "
90 PRINT x1
100 PRINT "resultado de x2: "
110 PRINT x2
 
REM Exercicio 2
180 LET x = RND(10)
190 LET z = 1
200 LET y = x - 1
210 IF y < 2 THEN GOTO 260
220 LET z = y * x 
230 LET y = y - 1
240 IF y > 0 THEN z = z * y
250 IF y > 0 THEN GOTO 230 ELSE 260
260 PRINT "Resultado do fatorial: "
270 PRINT z