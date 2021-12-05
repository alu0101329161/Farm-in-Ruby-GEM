require "granja/version"
require "granja/datos"
require "granja/animal"
require "granja/ganado"
require "granja/funcion"

module Granja

  include Funcion
  class Error < StandardError; end

end
