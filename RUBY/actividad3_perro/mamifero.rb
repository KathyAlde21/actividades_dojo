# Actividad Perro paso 1
# Crea un archivo mamifero.rb. En este archivo, crea una clase Mamifero. Mamifero debe tener un atributo de salud
# predeterminado de 150. También adicione un método llamado mostrar_salud , que cuando sea invocado, muestre la
# salud del mamífero.
# En un archivo separado (perro.rb) crea una clase llamada Perro que herede de la clase Mamifero

class Mamifero
    #mamifero debe tener un atributo de salud  predeterminado de 150
    def initialize
        @salud = 150
    end    
    #También adicione un método llamado mostrar_salud , que cuando sea invocado, muestre la salud del mamífero  
    def mostrar_salud
        @salud    
    end
end
