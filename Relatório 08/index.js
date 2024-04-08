class Animal {
  constructor(nome, idade, especie) {
    this.nome = nome;
    this.idade = idade;
    this.especie = especie;
  }

  printInfo() {
    console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`);
  }
}

class Cachorro extends Animal {
  constructor(nome, idade, especie, raca) {
    super(nome, idade, especie);
    this._raca = raca;
  }

  printInfo() {
    super.printInfo();
    console.log(`Raça: ${this._raca}`);
  }
}

class Gato extends Animal {
  constructor(nome, idade, especie, cores) {
    super(nome, idade, especie);
    this.cores = cores;
  }

  printInfo() {
    super.printInfo();
    console.log(`Cores: ${this.cores.join(', ')}`);
  }
}

const animal1 = new Animal('Rex', 5, 'Cachorro');
const cachorro1 = new Cachorro('Rex', 5, 'Cachorro', 'Labrador');
const gato1 = new Gato('Whiskers', 3, 'Gato', ['Branco', 'Preto']);

console.log("Métodos do Animal:");
animal1.printInfo();

console.log("\nMétodos do Cachorro:");
cachorro1.printInfo();

console.log("\nMétodos do Gato:");
gato1.printInfo();