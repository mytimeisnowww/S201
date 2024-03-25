class Carro
  def descrever
    'Este é um carro comum.'
  end
end

class CarroEsportivo < Carro
  def descrever
    'Este é um carro esportivo.'
  end
end

class CarroSedan < Carro
  def descrever
    'Este é um carro sedan.'
  end
end

carro_comum = Carro.new
carro_esportivo = CarroEsportivo.new
carro_sedan = CarroSedan.new

puts carro_comum.descrever
puts carro_esportivo.descrever
puts carro_sedan.descrever
