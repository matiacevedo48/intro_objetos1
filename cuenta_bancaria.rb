class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'El numero de digitos es distinto a 8'
        end
        if !(0..1).include?(vip)
            raise RangeError, 'El numero de digitos es distinto a 0 o 1'
        end
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@numero_de_cuenta}"
    end
end

cuentaPedro = CuentaBancaria.new('Pedro', 12345678, 1)
puts cuentaPedro.inspect
puts cuentaPedro.numero_de_cuenta