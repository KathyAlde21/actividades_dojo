# Actividad Leon
# Ahora, crea otra clase llamada Leon que herede de Mamifero. Pista: super (Sí, este es un león volador).
# 1.Debe tener la salud predeterminada de 170.
# 2.Agregue un nuevo método llamado volar, que cuando se invoque, disminuya la salud en 10.
# 3.Agregue un nuevo método llamado atacar_ciudad, que cuando se invoque, disminuya la salud en 50. 
# 4.Agregue un nuevo método llamado comer_humanos, que cuando se invoque, aumente la salud en 20.

# 5.Haz que Leon ataque la ciudad tres veces, coma humanos dos veces, vuele dos veces y luego muestre su salud.
# Cuando se llame al método mostrar_salud de Leon, diga 'Este es un león' antes de que muestre la información
# predeterminada (asegúrate de llamar a la función mostrar_salud de la clase de la que hereda).

require_relative "mamifero_leon.rb"
class Leon < Mamifero
    def volar
        @salud = @salud - 10
    end
    def atacar_ciudad
        @salud = @salud - 50
    end
    def comer_humanos
        @salud = @salud + 20
    end  
end

puts leon1 = Leon.new
puts leon1.mostrar_salud
print 'Este es un león'
puts leon1.atacar_ciudad
puts leon1.atacar_ciudad
puts leon1.atacar_ciudad
puts leon1.comer_humanos
puts leon1.comer_humanos
puts leon1.volar
puts leon1.volar
puts leon1.mostrar_salud
print 'Este es un león'
