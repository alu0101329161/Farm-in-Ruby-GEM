class Animal

    attr_reader :identificador, :edad, :sexo, :peso

    def initialize(iden = 0, edad = 0, sexo = "", peso = 0)
        @identificador = iden
        @edad = edad
        @sexo = sexo
        @peso = peso
    end

    def to_s
        "El animal #{@identificador} con #{@edad} dias de vida es #{@sexo} con un peso de #{@peso} gramos"
    end
end