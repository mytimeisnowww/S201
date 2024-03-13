use std::io;

fn preencher_array(valor: i32) -> [i32; 10] {
    let mut array = [0; 10];

    for i in 0..10 {
        array[i] = valor * (i as i32);
    }

    array
}

fn main() {
    println!("Digite o valor da função:");

    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Falha ao ler entrada");

    let valor_da_funcao: i32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Entrada inválida. Usando valor padrão 0.");
            0
        }
    };

    let resultado = preencher_array(valor_da_funcao);

    println!("Array preenchido:");
    for i in 0..10 {
        println!("array[{}] = {}", i, resultado[i]);
    }
}