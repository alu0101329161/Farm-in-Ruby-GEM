require "granja/version"

module Granja
  class Error < StandardError; end
  class Funcion
    attr_reader :condicion_de_vida, :cuidado
    #Constructor de la clase Funcion
    def initialize(condicion_vida = "", cuidado = "")
      @condicion_de_vida = condicion_vida
      @cuidado = cuidado
    end 




  end
end
