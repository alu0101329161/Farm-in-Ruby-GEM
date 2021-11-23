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




  end
end
