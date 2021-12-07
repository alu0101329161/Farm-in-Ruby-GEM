# Modulo para almacenar funcionalidades de la granja
module Funcion
   
  # @note Constante del modulo
  CONDICIONES_DE_VIDA = "campo abierto, establo"

  # Metodo para procesar cuidadps
  # @return String
  def self.cuidados(variable)
    if(variable == 1) 
      return "Cuidados tipo A"
    else 
      return "Cuidados tipo B"
    end
  end

  # Metodo para procesar reproduccion
  # @return String
  def self.reproduccion(variable)
    if(variable == 1) 
      return "Reproduccion tipo A"
    else 
      return "Reproduccion tipo B"
    end
  end

end
