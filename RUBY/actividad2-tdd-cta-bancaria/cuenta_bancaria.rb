# Actividad Cuenta Bancaria
# 1.CuentaBancaria debe tener un método que devuelva el saldo de la cuenta corriente del usuario.

# 2.CuentaBancaria debe tener un método que devuelva el saldo de la cuenta de ahorro del usuario.

# 3.CuentaBancaria debe permitir que un usuario deposite dinero en su cuenta de ahorro o corriente.

# 4.CuentaBancaria debe permitir a un usuario retirar dinero de una de sus cuentas, devolver un error si no hay fondos suficientes.

# 5.CuentaBancaria debe permitir al usuario ver la cantidad total de dinero que tiene en el banco.

# 6.CuentaBancaria debe rastrear cuántas cuentas tiene actualmente el banco.

# 7.Agregue un atributo tasa_interes al que el usuario no pueda acceder. Ajústelo a 0.01.

# 8.CuentaBancaria debe tener un método llamado informacion_cuenta que muestre el número de cuenta del usuario, el
# dinero total, el saldo de la cuenta corriente, el saldo de la cuenta de ahorros y la tasa de interés.

# 9.Un usuario no puede establecer ningún atributo de la clase CuentaBancaria.


class CuentaBancaria
  @@no_of_cliente = 0
  def initialize(nombre, rut)
    @account_owner = nombre
    @account_owner_rut = rut + '-cte'
    @numero_cuenta_corriente = rut + '-ahorro'
    @saldo_cuenta_corriente = 0
    @saldo_cuenta_ahorro = 0
    @tasa_interes = 0.01
    @@no_of_cliente += 1
  end

  def show_number_of_clients()
    p "El banco tiene un total de #{@@no_of_client} clientes"
    return self
  end
  
  def show_saldo_cta_cte()
    p "El saldo de la cuenta corriente es : #{@saldo_cuenta_corriente}"
    return self
  end
  
  def show_saldo_cta_ahorro()
    p "El saldo de la cuenta de ahorro es : #{@saldo_cuenta_ahorro}"
    return self
  end

  def show_saldo_total()
    p "El saldo total de todas tus cuentas es : #{@saldo_cuenta_corriente + @saldo_cuenta_ahorro}"
    return self
  end

  def deposit_money(tipo_cuenta, ammount)
    if tipo_cuenta == "cta_cte"
      @saldo_cuenta_corriente += ammount
      p "Depositaste $#{ammount} en tu Cuenta Corriente."
      show_saldo_cta_cte()
    elsif tipo_cuenta == "cta_ahorro"
      @saldo_cuenta_ahorro += ammount
      p "Depositaste $#{ammount} en tu Cuenta de Ahorro."
      show_saldo_cta_ahorro()
    end
    return self
  end

  def retire_money(tipo_cuenta, ammount)
    if tipo_cuenta == "cta_cte"
        if @saldo_cuenta_corriente >= ammount
              @saldo_cuenta_corriente -= ammount
              p "Retiraste $#{ammount} de tu Cuenta Corriente"
              show_saldo_cta_cte()
        elsif 
          p "No tienes suficiente saldo en tu Cuenta Corriente"
        end
    elsif tipo_cuenta == "cta_ahorro"
        if @saldo_cuenta_ahorro >= ammount
            @saldo_cuenta_ahorro -= ammount
            p "Retiraste $#{ammount} de tu Cuenta de Ahorro"
            show_saldo_cta_ahorro()
        elsif 
          p "No tienes suficiente saldo en tu Cuenta de Ahorro"
        end            
    end
    return self
  end
  
  def account_information()
    p"---------------------------------------"
    p "El cliente #{@account_owner}, RUT: #{@account_owner_RUT} posee las siguientes cuentas:"
    show_saldo_total()
    show_saldo_cta_cte()
    show_saldo_cta_ahorro()
    p "La tasa de interes vigente es: #{@tasa_interes}"
    return self
  end 
end

juanSegura = CuentaBancaria.new('Juan Segura', '4555666-k')
pedroPaga = CuentaBancaria.new('Pedro Paga', '10111222-3')

juanSegura.show_saldo_total().deposit_money("cta_cte", 100).account_information()

# pedroPaga.show_saldo_cta_corriente()
# pedroPaga.show_saldo_cta_ahorro()
# pedroPaga.show_saldo_total()
# pedroPaga.deposit_money("cta_cte", 100)
# pedroPaga.deposit_money("cta_cte", 2)
# pedroPaga.deposit_money("cta_ahorro", 50)
# pedroPaga.deposit_money("cta_ahorro", 1)
# pedroPaga.account_information()
