
class Ganado < Animal
    
    include Comparable
    attr_reader :raza, :aprovechamiento, :alimentacion

    def initialize(raza = "", apro = "", ali = "", iden = 0, edad = 0, sexo = "", peso = 0)

        super(iden,edad,sexo,peso)
        if(raza == "bovino" || raza == "porcino" || raza == "ovino" || raza == "caprino")
            @raza = raza
        else
            return nil
        end
        if(apro == "carne" || apro == "piel" || apro == "leche")
          @aprovechamiento = apro
        else
            nil
        end
        if(ali == "herbívoro" || ali == "omnívoro")
          @alimentacion = ali
        else
            return nil
        end

    end

    def to_s
        "La cabeza de ganado de raza #{@raza} con aprovechamiento tipo #{@aprovechamiento} y #{@alimentacion}"
    end

    def <=> other 
		@edad <=> other.edad
	end

end