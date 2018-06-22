## Ejercicio 7: Rack
## Se tiene el archivo *config.ru* :

require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200, {'Content-Type' => 'text/html' }, ['<p>Lorem ipsum</p>']]
 end
end

run MiPrimeraWebApp.new
