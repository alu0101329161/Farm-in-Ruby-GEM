# Clase para representar granjas ganadera
class Ganadera < Datos

    include Enumerable

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

    def add_animal other
        if (other.respond_to? Ganado)
            @almacen.push(other)
        else
            return "Solo se almacenan objetos de tipo Ganado"
        end
    end

    def [] (index)
        case index
          when 0, -6
            @ganado
          when 1, -5
            @destino
          when 2, -4
            @numero
          when 3, -3
            @precio_unitario
          when 4, -2
            @precio_venta
          when 5, -1
            @almacen
          when :ganado, "ganado" 
            @ganado
          when :destino, "destino" 
            @destino
          when :numero, "numero" 
            @numero
          when :precio_unitario, "precio_unitario" 
            @precio_unitario
          when :precio_venta, "precio_venta" 
            @precio_venta
          when :almacen, "almacen" 
            @almacen
          else
            nil
        end 
    end

    def each
        yield @ganado
        yield @destino
        yield @numero
        yield @precio_unitario
        yield @precio_venta
        yield @almacen
    end
    
    # Hace falta para los metodos de enumerable
    def <=> other 
		@numero <=> other.numero
	end
   
    # da problemas con el collect
    def == other
        @ganado == other.ganado && @destino == other.destino && @numero == other.numero
    end

    def * value
		Ganadera.new(@ganado, @destino, @numero*value, @precio_unitario, @precio_venta)
	end

    def to_s
        s = "La granja ganadera tiene como ganado a los #{@ganado}, el destino es #{@destino}, el numero es #{@numero}, con "
        s << "precio unitario de #{precio_unitario} y un precio de venta de #{@precio_venta}"
        return s
    end

end