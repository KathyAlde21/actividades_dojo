#1) Mostrar 1-255 // Escriba un programa que muestre todos los números del 1 al 255.
def ejer1
    print (1..255).to_a
end
#.to_a es la invocacion del array "a" de array


#2) Mostrar números impares entre 1 y 255 // Escriba un programa que muestre todos los números impares del
# 1 al 255.
def ejer2(x)
    for i in x
        if i.odd? # con i.even? se puede preguntar por los pares
            puts i
        end
    end
end


#3) Muestre la suma // Escriba un programa que muestre los números del 0 al 255,
# pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento.
# Por ejemplo, tu programa debe mostrar algo como esto:
#Nuevo numero: 0 Suma: 0 // #Nuevo numero: 1 Suma: 1 // #Nuevo numero: 2 Suma: 3 // #Nuevo numero: 3 Suma: 6
#... #Nuevo numero: 255 Suma: __
#NO utilice un arreglo para este ejercicio.
def ejer3(x) # 1..255
    sumatoria = 0
    for i in x 
        sumatoria = sumatoria+i
        puts "el numero ingresado es #{i} y la suma total es #{sumatoria}"
    end
end
#ejer3(1..255)


#4) Recorriendo un arreglo // Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa
#que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un
#arreglo es sumamente importante.
# ejercicio4 = [1, 3, 5, 7, 9, 13]

def ejer4(x)
    x.each do |i|
        puts i  
    end  
end
# ejer4([1, 3, 5, 7, 9, 13])


#5) Encontrar el máximo // Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y
# muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los
# números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.

def ejer5(x)
    puts x.max
end
#ejer5([1,2,4,5])


#6) Promedio // Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo.
# Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de
# crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus
# instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.

def ejer6(x)
    suma = 0
    x.each do |i|
        suma = suma + i.to_f # suma += i 
    end
    puts promedio = suma/x.length
end
#ejer6([2, 10, 8])



#7) Arreglo con números impares // Escriba un programa que cree un arreglo "y" que contenga todos los números
# impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].

array2 = [3,5,7,8]
ejer7(array2)

x=[]
impares=[1..255]
for numeros in impares
    if numeros %2 != 0
        #x.push(numeros)
        puts numeros
    end
    x
end
print x


#8) Mayor que Y // Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores
# a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe
# mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).

x = [1, 3, 5, 7]
y = 3
z = []
x.each do |i|
    if i > y
        z.push(i)
    end
end 
print z.push(i)
print z
print ejer8(x)


X = {}
def ejer8(x,y)
    z = []
    x.each do |i|
        if i > y
            z.push(i)
        end
    end
    return z
end
print ejer8([1,3,5,7],3)



#9) Elevar al cuadrado // Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e
# instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el
# arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].

def eleva_cuadrado(arreglo)
    print arreglo.map { |num| num * num }
  end


#10) Eliminar números negativos // Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace
# cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es 
#decir [1, 5, 10, 0].

def ejer10(param1)
    newArray = []
    param1.each do |i|
        # if i > 0
        #     newArray.push(i)
        # else
        #     newArray.push(0)    
        # end
        #con if inline
        i > 0 ? newArray.push(i) : newArray.push(0)
    end
    return newArray
end
print ejer10(x)


#11) Max, Min, y Promedio // Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash
# con el valor máximo, el valor mínimo y el promedio de los valores en el arreglo.
#hash ={"maximo" => "valor"}
#hash ={"minimo" => "valor"}
#hash ={"promedio" => "valor"}

x = [1,5,10,-2]
def ejer11(param1)
    hashMax = param1.max
    hashMin = param1.min
    sumatoria = 0
    for i in param1
        sumatoria = sumatoria + i.to_f
    end
    promedio = sumatoria/param1.length
    hash = {"maximo" => hashMax, "minimo" => hashMin, "promedio" => promedio}
end

print ejer11(x)
print ejer11([1,2,3,4,8,24,23])


#12) Cambiar los valores en el arreglo // Dado un arreglo x, cree un algoritmo que cambie cada número del
# arreglo por el número que hay en la siguiente posición. Por ejemplo, dado el arreglo [1, 5, 10, 7, -2],
# cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].

x = [1, 5, 10, 7, -2]
#y = [5,10,7,2,0]
    #delete_at elimina en forma puntual algo
def ejer12(param1)
    param1.delete_at(0)
    param1.push(0)
end
print ejer12(x)
print ejer12([1,2,3,4,5,7,8])


#13) Números a cadenas // Escriba un programa que tome un arreglo de números y reemplace cualquier número
# negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya
# terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

x = [-1, -3, 2]
valorEsperdo = ['Dojo', 'Dojo', 2]

def ejerc13(x)
    arrayNew = []
    x.each do |i|
        if i < 0
            arrayNew.push("Dojo")
        else
            arrayNew.push(i)
        end
    end
    return arrayNew
    #tiene que ir despues del boucle o no repite la informacion
end
print ejerc13(x)
#
print a = [1,2,3]
print a[0]
print a[-1]