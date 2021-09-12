def adivina_numero valor
    x = 25
    #obtener el numero igual, devuelve "¡Lo conseguiste!"
    #obtener número más alto, devuelve "¡La suposición fue demasiado alta!"
    #obtener un número más bajo, devuelve "¡La suposición fue demasiado baja!"
    unless num == x
        puts "Lo conseguiste"
    end    
    elsif num > x
        puts "¡La suposición fue demasiado alta!" 
    end
    else num < x
        puts "¡La suposición fue demasiado baja!" 
    end
   
end