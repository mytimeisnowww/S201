#include <iostream>
#include <math.h>

using namespace std;

int main() {

  int x;
  int y;
  int i;
  int soma;
  int sub;
  int mult;
  int div;
  int exp;

  cout << "digite o x: ";

  cin >> x;
  
  cout << "digite o y: ";

  cin >> y;

  soma = x + y;
  sub = x - y;
  div = x / y;
  mult = x * y;
  exp = pow(x ,y);

  cout << "Soma de x + y: " << soma << endl ;
  cout << "Subtração de x - y: " << sub << endl;
  cout << "Divisão de x / y: " << div << endl ;
  cout << "Multiplicação de x * y: " << mult << endl ;
  cout << "Exponecial de x ^ y: " << exp << endl ;
  
  for(i = 0; i <= 10; i++)
    {
      int tabuada;
      tabuada = x * i;
      cout <<  tabuada << endl;
    }
}