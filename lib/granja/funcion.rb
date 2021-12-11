module Granja
  # Modulo para almacenar funcionalidades de la granja
  module Funcion
    
    # @note Constante del modulo
    CONDICIONES_DE_VIDA = :campo_abierto
    CONDICIONES_DE_VIDA1 = :jaula

    # Metodo para procesar cuidadps
    # @return String
    def self.cuidados(cantidad)
      "Se ha de poder proporcionar a todos los animales de una granja la cantidad de antibiotico #{cantidad}"
    end

    # Metodo para procesar reproduccion
    # @return String
    def self.reproduccion(cantidad)
      "Hay #{cantidad} de animales preparados para la reproduccion"
    end

  end
end