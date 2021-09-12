usuario1 = {:first_name => "Kathy", :last_name => "Alderete"}

puts "Tu nombre completo es: ", usuario1[:first_name], usuario1[:last_name]
puts " "

# Aplicando .delete
puts "Aplicando .delete al apellido"
usuario1.delete(:last_name)
puts usuario1

# Aplicando .empty?
# x = {foo: 0, bar: 1, baz: 2}
puts usuario1.empty?
  
# Aplicando .has_key?
puts usuario1.has_key?(:last_name)
puts "usuario1 tiene una clave llamada apellido"

# Aplicando .has_value?
puts usuario1.has_value?("Alderete")
puts "usuario1 tiene un valor llamado Alderete"


