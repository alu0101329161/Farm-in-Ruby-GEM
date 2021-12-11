# Guardar los datos de las cabezas de ganado hereda de animal
class Ganado < Animal
    
    include Comparable

    # @overload getter de los atributos
    attr_reader :raza, :aprovechamiento, :alimentacion

    # Constructor de la clase Ganado
    # @note se aceptan 7 parametro y se llama a super
    # @return inicializa atributos
    def initialize(raza = "", apro = "", ali = "", iden = 0, edad = 0, sexo = "", peso = 0)

        super(iden,edad,sexo,peso)
        if(raza == :bovino || raza == :porcino || raza == :ovino || raza == :caprino)
            @raza = raza
        else
            return nil
        end
        if(apro == :carne || apro == :piel || apro == :leche)
          @aprovechamiento = apro
        else
            nil
        end
        if(ali == :herbívoro || ali == :omnívoro)
          @alimentacion = ali
        else
            return nil
        end

    end

    # Metodo para convertir en string
    # @return String
    def to_s
        "La cabeza de ganado de raza #{@raza} con aprovechamiento tipo #{@aprovechamiento} y #{@alimentacion}"
    end

    # Metodo para comparar por edad
    # @return Bool
    def <=> other 
		@edad <=> other.edad
	end

    # Metodo para comparar todos los valores
    # @return Bool
    def == other
        @raza == other.raza && @aprovechamiento == other.aprovechamiento && @alimentacion == other.alimentacion
    end

end