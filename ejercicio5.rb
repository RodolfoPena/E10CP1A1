## Ejercicio 5: Mixins.
## Transformar la clase *Herviboro* en un modulo.
## Implementar el modulo en la clase *Conejo* mediante *Mixin*
## para poder acceder al metodo *dieta* desde la instancia.
## Finalmente imprimir la definicion de Herviboro.
module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
Herviboro.definir

## Pregunta:Por que es mejor solucion la implementación de Mixin que mediante Herencia de Herencia
