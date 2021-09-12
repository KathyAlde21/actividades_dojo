# Actividad Perro paso 1
# En un archivo separado (perro.rb) crea una clase llamada Perro que herede de la clase Mamifero y haga lo siguiente:
# 1.Salud predeterminada de 150 (heredada).
# 2.Un método llamado acariciar, que cuando se invoque, aumente la salud en 5.
# 3.Un método llamado caminar, que cuando se invoque, disminuya la salud en 1.
# 4.Un método llamado correr, que cuando se invoque, disminuya la salud en 10.
# 5.Un método llamado mostrar_salud (heredado).
# 6.Haga que una instancia de la clase Perro camine 3 veces, corra dos veces, acaricie una vez y luego muestre su salud.

require_relative "mamifero.rb"
class Perro < Mamifero
    def acariciar
        @salud = @salud + 5
    end
    def caminar
        @salud = @salud - 1
    end
    def correr
        @salud = @salud - 10
    end  
end

puts perro1 = Perro.new
puts perro1.mostrar_salud
puts perro1.caminar
puts perro1.caminar
puts perro1.caminar
puts perro1.correr
puts perro1.correr
puts perro1.acariciar
puts perro1.mostrar_salud
