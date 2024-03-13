
package main

import (
  "fmt"
  "math"
)

func exerc1() {
  var a, b, c, delta float64

  fmt.Print("Digite o valor de A: ")
  fmt.Scan(&a)
  fmt.Print("Digite o valor de B: ")
  fmt.Scan(&b)
  fmt.Print("Digite o valor de C: ")
  fmt.Scan(&c)

  delta = b*b - 4*a*c

  if delta < 0 {
    fmt.Println("Sem raízes reais!")
  } else if delta == 0 {
    fmt.Println("Raízes iguais de valor: ", (-b+math.Sqrt(delta))/(2*a))
  } else {
    fmt.Println("Raíz 1: ", (-b+math.Sqrt(delta))/(2*a))
    fmt.Println("Raíz 2: ", (-b-math.Sqrt(delta))/(2*a))
  }

  fmt.Print("Delta: ", delta)
}

func main() {
  exerc1()
}
