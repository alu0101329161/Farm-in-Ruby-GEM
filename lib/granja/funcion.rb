module Granja
  # Modulo para almacenar funcionalidades de la granja
  module Funcion
    
    # @note Constante del modulo
    CONDICIONES_DE_VIDA = :campo_abierto
    CONDICIONES_DE_VIDA1 = :jaula
    CONDICIONES_DE_VIDA2 = :establo

    # Metodo para procesar cuidadps
    # @return String
    def cuidados(cantidad, lista)
      lista.collect{|item| item + cantidad}
    end

    # Metodo para procesar reproduccion
    # @return String
    def reproduccion(cantidad, lista)
      dias = cantidad * 30
      lista.select{|item| item > dias}
    end

  end
end