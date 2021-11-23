require "granja/version"

module Granja
  class Error < StandardError; end
  class Funcion
    attr_reader :condicion_de_vida, :cuidado, :reproduccion
    #Constructor de la clase Funcion
    def initialize(condicion_vida = "", cuidado = "", reproduccion = "")
      @condicion_de_vida = condicion_vida
      @cuidado = cuidado
      @reproduccion = reproduccion
    end 

    def to_s
      "Las condiciones de vida de los animales son: #{@condicion_de_vida} \n La calidad de los cuidados es #{@cuidado} \n y el nivel de reproduccion es #{@reproduccion}"
    end

  end
  class Datos
  end
end
