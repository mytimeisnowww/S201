using System;

public class Fruta
{
    public string Nome { get; set; }
    public string Tipo { get; set; }

    public virtual void Descrever()
    {
        Console.WriteLine("O tipo de fruta é " + Tipo);
        Console.WriteLine("O nome da fruta é " + Nome);
    }
}

public class FrutaDoce : Fruta
{
  public string Cor { get; set; }
  
    public FrutaDoce(string nome, string tipo, string cor)
    {
        Nome = nome;
        Tipo = tipo;
        this.Cor = cor;
    }

    public override void Descrever()
  {
      Console.WriteLine("O tipo de fruta é " + Tipo);
      Console.WriteLine("O nome da fruta é " + Nome);
      Console.WriteLine("A cor da fruta é " + Cor);
  }
}

public class FrutaAzeda : Fruta
{
    public FrutaAzeda (string nome, string tipo)
    {
        Nome = nome;
        Tipo = tipo;
    }

  public override void Descrever()
  {
      Console.WriteLine("O tipo de fruta é " + Tipo);
      Console.WriteLine("O nome da fruta é " + Nome);
  }
  public virtual void Comer()
  {
      Console.WriteLine("Nossa, que fruta azeda!");
  }
}

class Program
{
    static void Main(string[] args)
    {
        Fruta fruta = new Fruta() { Nome = "Banana", Tipo = "Genérica" };
        FrutaDoce frutadoce = new FrutaDoce("Morango", "Doce", "Vermelha");
        FrutaAzeda frutaazeda = new FrutaAzeda("Limão", "Azeda");

        fruta.Descrever();

        frutadoce.Descrever();

        frutaazeda.Descrever();
        frutaazeda.Comer();
    }
}