module Granja
  # Modulo para almacenar funcionalidades de la granja
  module Funcion
    
    # @note Constante del modulo
    CONDICIONES_DE_VIDA = :campo_abierto
    CONDICIONES_DE_VIDA1 = :jaula
    CONDICIONES_DE_VIDA2 = :establo

    # Metodo para procesar cuidadps
    # @return String
    def cuidados(cantidad, array)
      valor = 0
      array.each do |elemento|
        if elemento.edad <= 365
        valor = valor + 1
        end
      end
      return "Hay #{valor} animales que necesitan una cantidad #{cantidad} de antibioticos mensual"
    end

    # Metodo para procesar reproduccion
    # @return String
    def reproduccion(cantidad, contenedor)
      dias = cantidad * 30
      valor = 0
      contenedor.each do |elemento|
        if elemento.edad > dias
        valor = valor + 1
        end
      end
      "Hay #{valor} animales preparados para la reproduccion"
    end

  end
end