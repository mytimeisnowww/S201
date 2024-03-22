#include <iostream>
#include <string>

using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;

public:
    Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

    void imprimirNome() {
        cout << "O nome é: " << nome << endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(string nome, int idade) : Pessoa(nome, idade) {}

    void imprimirIdade() {
        cout << "A idade do professor é: " << idade << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;

public:
    Aluno(string nome, int idade, string matricula) : Pessoa(nome, idade), matricula(matricula) {}

    void imprimirIdade() {
        cout << "A idade do aluno é: " << idade << endl;
    }

    void imprimirMatricula() {
        cout << "A matrícula do aluno é: " << matricula << endl;
    }
};

int main() {
    Pessoa pessoa("João", 30);
    Professor professor("Maria", 40);
    Aluno aluno("Pedro", 20, "202");

    cout << "=== Pessoa ===" << endl;
    pessoa.imprimirNome();

    cout << "\n=== Professor ===" << endl;
    professor.imprimirNome();
    professor.imprimirIdade();

    cout << "\n=== Aluno ===" << endl;
    aluno.imprimirNome();
    aluno.imprimirIdade();
    aluno.imprimirMatricula();

    return 0;
}