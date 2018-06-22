## Ejercicio 3: Herencia
## Se tiene la clase *Vehicle* que recibe como argumento un modelo y un ano.
## El metodo *engine_start* enciende el vehiculo.
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@instances = 0
  def initialize
    @@instances += 1
  end

  def self.get_number_of_instances
    @@instances
  end

  def engine_start
    puts 'El motor está encendido!'
  end
end

car = Car.new.engine_start
print car
10.times do
  Car.new
end
car = Car.get_number_of_instances
print car
# Se pide:
# - Crear una clase *Car* que herede de *Vehicle*
# - El constructor de *Car*, ademas de heredar las propiedades de *Vehicle*,
# debe incluir un contador de instancias de *Car*
# - Crear un metodo de clase en *Car* que devuelva la cantidad de instancias.
# - El metodo *engine_start* heredado debe además imprimir
# *'El motor se ha encendido!'*.
# - Instanciar 10 *Cars*.
# - Consultar la cantidad de instancias generadas de *Car* mediante el
# metodo de clase creado.
