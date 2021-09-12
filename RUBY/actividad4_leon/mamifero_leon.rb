# Actividad Leon
# Ahora, crea otra clase llamada Leon que herede de Mamifero. Pista: super (Sí, este es un león volador).
# 1.Debe tener la salud predeterminada de 170.

class Mamifero
    #mamifero debe tener un atributo de salud  predeterminado de 150
    def initialize
        @salud = 170
    end    
    #También adicione un método llamado mostrar_salud , que cuando sea invocado, muestre la salud del mamífero  
    def mostrar_salud
        @salud    
    end
end
