package main

import (
  "fmt"
  "math/rand"
)

func fatorial(n int) int {
  if n <= 1 {
    return 1
  }
  return n * fatorial(n-1)
}

func main() {
  
  numero := rand.Intn(100)
  fmt.Println("Número aleatório gerado:", numero)
  
  resultado := fatorial(numero)
  fmt.Println("Fatorial de", numero, ":", resultado)
}