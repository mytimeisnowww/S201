using System;

public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public void MostrarNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    public virtual void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade);
    }
}

public class CachorroGrande : Cachorro
{
    private string tamanho;

    public CachorroGrande(string nome, int idade, string tamanho)
    {
        Nome = nome;
        Idade = idade;
        this.tamanho = tamanho;
    }

    public override void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro grande é: " + Idade);
    }

    public void MostrarTamanho()
    {
        Console.WriteLine("O tamanho do cachorro grande é: " + tamanho);
    }
}

public class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public override void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro pequeno é: " + Idade);
    }
}

class Program
{
    static void Main(string[] args)
    {
        Cachorro cachorro = new Cachorro() { Nome = "Rex", Idade = 5 };
        CachorroGrande cachorroGrande = new CachorroGrande("Bolt", 8, "Grande");
        CachorroPequeno cachorroPequeno = new CachorroPequeno("Fido", 3);
      
        cachorro.MostrarNome();
        cachorro.MostrarIdade();

        cachorroGrande.MostrarNome();
        cachorroGrande.MostrarIdade();
        cachorroGrande.MostrarTamanho();

        cachorroPequeno.MostrarNome();
        cachorroPequeno.MostrarIdade();
    }
}