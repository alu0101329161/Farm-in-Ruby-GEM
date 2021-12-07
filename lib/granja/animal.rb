 # Guardar los datos sobre los animales de la granja
class Animal
    include Comparable
 
    # @overload getter de los atributos
    attr_reader :identificador, :edad, :sexo, :peso

    # Constructor de la clase Animal
    # @note se aceptan 4 parametros de tipo int o string
    # @return inicializa atributos
    def initialize(iden = 0, edad = 0, sexo = "", peso = 0)
        if defined?(@@cantidad_animal)
            @@cantidad_animal +=1
        else
            @@cantidad_animal = 1
        end

        @identificador = iden
        @edad = edad
        @sexo = sexo
        @peso = peso
    end
  
    # Metodo para convertir en string
    # @return String
    def to_s
        "El animal #{@identificador} con #{@edad} dias de vida es #{@sexo} con un peso de #{@peso} gramos"
    end
    
    # Metodo de clase
    # @return variable de clase
    def self.count
        @@cantidad_animal
    end
 
    # Metodo para comparar por peso
    # @return Bool
    def <=> other 
		@peso <=> other.peso
	end
end
