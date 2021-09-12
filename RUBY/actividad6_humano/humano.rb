# Actividad Humano I
# En esta actividad vamos a crear la clase Humano.
# 1.Humano debe tener 4 atributos: fuerza, inteligencia, sigilo y salud. 
# 2.Humano debe tener un valor predeterminado de 3 para fuerza, sigilo e inteligencia. Un valor predeterminado de 100 para salud. 
# 3.Agregue un nuevo método llamado ataque, que cuando se invoque, ataque a otro objeto, es decir, disminuya su salud si el objeto que se está atacando hereda de la clase Humano. Pista: Puedes verificar las herencias de un objeto usando .class.ancestors.


class Humano
  attr_accessor :fuerza, :inteligencia, :salud, :sigilo
  def initialize
    @fuerza = 3
    @inteligencia = 3
    @sigilo = 3
    @salud = 100
  end
  def ataque(obj)
    if obj.class.ancestors.include?(Humano)
      obj.salud -= 10
      true
    else
      false

    end
  end
end


puts humano1 = Humano.new
puts humano1.fuerza
puts humano1.inteligencia
puts humano1.sigilo
puts humano1.salud
puts humano1.ataque

