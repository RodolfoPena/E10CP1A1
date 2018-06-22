module Vehiculo
  # auto
  class Automovil
    def initialize(modelo)
      @modelo = modelo
      puts 'Auto nuevo!'
    end
  end
  # moto
  class Moto
    def initialize(ano)
      @ano = ano
      puts 'Moto nueva!'
    end
  end
  # camion
  class Camion
    def initialize(cilindrada)
      @cilindrada = cilindrada
      puts 'Camiion nuevo!'
    end
  end
end


Vehiculo::Camion.new(5000)
