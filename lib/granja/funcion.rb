# Modulo para almacenar funcionalidades de la granja
module Funcion

  CONDICIONES_DE_VIDA = "campo abierto"

  def self.cuidados(variable)
    if(variable == 1) 
      return "Cuidados tipo A"
    else 
      return "Cuidado tipo B"
    end
  end

  def self.reproduccion(variable)
    if(variable == 1) 
      return "Reproduccion tipo A"
    else 
      return "Reproduccion tipo B"
    end
  end

end
