  class Datos
    attr_reader :identificacion, :nombre, :tipo, :descripcion
    #Constructor de la clase Funcion
    def initialize(identificacion = "", nombre = "", tipo = "", descripcion = "")
      @identificacion = identificacion
      @nombre = nombre
      @tipo = tipo
      @descripcion = descripcion
    end
    #metodo para imprimir
    def to_s
      "la identificacion de la granja es: #{@identificacion} \n el nombre es: #{@nombre} \n , el tipo es: #{@tipo} \n y la descripcion es: #{@descripcion}"
    end
  end
