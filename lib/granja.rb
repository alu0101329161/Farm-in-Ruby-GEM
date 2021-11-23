require "granja/version"

module Granja
  class Error < StandardError; end
  class Funcion
    attr_reader :condicion_de_vida
    #Constructor de la clase Funcion
    def initialize(condicion_vida = "")
      @condicion_de_vida = condicion_vida
    end 




  end
end
