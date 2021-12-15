# Clase para representar granjas ganadera
module Granja
  class Ganadera < Datos

      include Enumerable,Funcion

      # @overload getter de los atributos
      attr_reader :ganado, :destino, :numero, :precio_unitario, :precio_venta, :almacen


        # Constructor de la clase Ganadera
        # @note se aceptan 9 parametros de tipo int,string y array
        # @return inicializa atributos
      def initialize(iden = nil, nombre = "", desc = "", ganado = nil, destino = nil, numero = 0, precio_unitario = 0.0, precio_venta = 0.0, almacen = nil)

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

          # le pasamos a datos que soy granja tipo ganadera
          super(iden, nombre, :ganadera, desc)

          @numero = numero
          @precio_unitario = precio_unitario
          @precio_venta = precio_venta
          @almacen = almacen

      end

      # @note añade animales sin romper encapsulamiento
      def add_animal other
          if (other.instance_of? Granja::Ganado)
              @almacen.push(other)
              @numero = @numero + 1
          else
              return "Solo se almacenan objetos de tipo Ganado"
          end
      end

      # @note spbrecarga operador [] para Array
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
 
      # @note Redefinir metodo each
      def each
          yield @numero
          yield @precio_unitario
          yield @precio_venta
      end
      
      # Hace falta para min max
      def <=> other 
         @numero <=> other.numero 
      end
    
      # da problemas con el collect en []
      def == other
          @ganado == other.ganado && @destino == other.destino && @numero == other.numero
      end

      # Usar collect
      def * value
         Ganadera.new(@ganado, @destino, @numero*value, @precio_unitario, @precio_venta)
      end

      # @note indica el valor de la constante dependiendo del tipo de ganado
      def sistema_gestion
          if(@ganado == :bovino || @ganado == :porcino)
              return Granja::Funcion::CONDICIONES_DE_VIDA1
          else
              return Granja::Funcion::CONDICIONES_DE_VIDA
          end
      end

      # @note Imprime una cadena correctamente formateada
      def to_s
          s = "La granja ganadera tiene como ganado a los #{@ganado}, el destino es #{@destino}, el numero es #{@numero}, con "
          s << "precio unitario de #{precio_unitario} y un precio de venta de #{@precio_venta}"
          return s
      end

  end
end