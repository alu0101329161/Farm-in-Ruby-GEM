module Granja
 # Guardar los datos de la granja
  class Datos
    # @overload getter de los atributos
    attr_reader :identificacion, :nombre, :tipo, :descripcion

    # Constructor de la clase datos
    # @note se aceptan 4 parametros de cualquier tipo
    # @return inicializa atributos
    def initialize(identificacion = nil, nombre = "", tipo = nil, descripcion = "")

      if(tipo == :avicola || tipo == :ganadera)
        @tipo = tipo
      else
        return nil
      end
      @descripcion = descripcion
      @identificacion = identificacion
      @nombre = nombre
    end

    # Metodo para convertir en string
    # @return String
    def to_s
      "la identificacion de la granja es: #{@identificacion}, el nombre es: #{@nombre}, el tipo es: #{@tipo} y la descripcion es: #{@descripcion}"
    end
  end
end
