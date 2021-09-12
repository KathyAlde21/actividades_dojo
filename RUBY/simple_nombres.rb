a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]

nombres.each do |i|
    puts "El nombre es #{i[:nombre]} #{i[:apellido]}"
end
    puts "Tienes #{nombres.length} nombres completos"