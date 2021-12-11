# Clase para representar granjas ganadera
class Ganadera < Datos

    attr_reader :ganado, :destino, :numero, :precio_unitario, :precio_venta, :almacen

    def initialize(ganado = nil, destino = nil, numero = 0, precio_unitario = 0, precio_venta = 0)

        if(ganado == :bovino || ganado == :porcino || ganado == :ovino || ganado == :caprino)
            @ganado = ganado
        else
            return nil
        end
        if(destino == :leche || destino == :sacrificio)
            @destino = destino
        else
              return nil
        end

        @numero = numero
        @precio_unitario = precio_unitario
        @precio_venta = precio_venta
        @almacen = []

    end

end