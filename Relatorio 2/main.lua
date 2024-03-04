-- exercicio 1
x = io.read()
for i =0, 10, 1 do
 print(x.. "x" .. i .. " = " .. x * i )
  
end

-- exercicio 2
function contar_pares(tabela)
    local contador = 0
    for _, valor in ipairs(tabela) do
        if valor % 2 == 0 then
            contador = contador + 1
        end
    end
    return contador
end
tabela = {}
for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end
num_pares = contar_pares(tabela)
print("Número de números pares na tabela:", num_pares)