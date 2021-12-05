
class Ganado < Animal

    attr_reader :raza, :aprovechamiento, :alimentacion

    def initialize(raza = "", apro = "", ali = "", iden = 0, edad = 0, sexo = "", peso = 0)

        super(iden,edad,sexo,peso)
        @raza = raza
        @aprovechamiento = apro
        @alimentacion = ali

    end

end