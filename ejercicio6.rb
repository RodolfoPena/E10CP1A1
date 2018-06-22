## Ejercicio 6: Mixins.
## Crear una clase **Student** con un metodo constructor que
## recibira 3 argumentos (nombre, nota1 y nota2).
## Cada una de las notas tendra, por defecto, valor **4** en
## el caso que no se ingrese una nota al momento de crear una nueva instancia

## La clase tambien debe tener una variable de clase llamada **quantity**
## la que sera iniciada en 0 y se incrementara en 1 cada vez que se instancie
## un nuevo objeto.

## Crear un modulo **Test** con un metodo **result**. Este metodo
## debe calcular el promedio de 2 notas y si ese promedio es superior
## a 4 entregrar un mensaje que debe decir **"Estudiante aprobado"**.
## En caso contrario, enviara un mensaje **"Estudiante reprobado"**.
## module Test
module Test
  @average = 0.0
  def result
    @average = (@first_score + @second_score) / 2.0
    if @average > 4.0
      puts "Promedio: #{@average}, Aproved Student"
    else
      puts "Promedio: #{@average}, Student not Aproved"
    end
  end
end
## module Attendance
module Attendance
  def student_quantity
    puts "Number of students: #{self.quantity}"
  end
end
## Class student
class Student
  include Test
  extend Attendance
  attr_reader :name, :first_score, :second_score
  @@quantity = 0
  def initialize(name, first_score = 4.0, second_score = 4.0)
    @name = name
    @first_score = first_score
    @second_score = second_score
    @@quantity += 1
  end
  def self.quantity
    @@quantity
  end
end


z = %w[Matias Maria Rodolfo Diego Samara Ethan Rodrigo Ernesto Carlos Marion]
w = 0
10.times do
  x = rand(1..7)
  y = rand(1..7)
  w += 1
  student = Student.new(z[w-1], x, y)
  puts "#{student.name} : #{x} , #{y} #{student.result}"
end

puts Student.student_quantity()

## Crear un segundo modulo **Attendance** con un metodo **student_quantity**
## que permita mostrar en pantalla la cantidad de estudiantes creados.

## Anadir a la clase Student el modulo Test como metodos de instancia y el
## modulo Attendance como metodos de clase.

## Crear 10 objetos de la clase Student y utilizar los metodos creados
## para saber si los alumnos estan aprobados o no y, finalmente, mostrar
## el total de alumnos creados.
