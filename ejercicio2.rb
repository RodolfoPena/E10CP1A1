## Ejercicio 2: Sintaxis
## Corregir los errores de sintaxis para que las ultimas cuatro lineas
## se ejecuten de manera correcta
## La ultima instruccion debe imprimir *"Hola! Soy la clase MiClase"*
class MiClase
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def self.saludar
        "Hola! Soy la clase #{@name}"
    end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar
puts c.name
