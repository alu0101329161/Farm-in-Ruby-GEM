 # Guardar los datos de la granja
  class Datos
    # @overload getter de los atributos
    attr_reader :identificacion, :nombre, :tipo, :descripcion

    # Constructor de la clase datos
    # @note se aceptan 4 parametros de cualquier tipo
    # @return inicializa atributos
    def initialize(identificacion = "", nombre = "", tipo = "", descripcion = "")
      @identificacion = identificacion
      @nombre = nombre
      @tipo = tipo
      @descripcion = descripcion
    end

    # Metodo para convertir en string
    # @return String
    def to_s
      "la identificacion de la granja es: #{@identificacion} \n el nombre es: #{@nombre} \n , el tipo es: #{@tipo} \n y la descripcion es: #{@descripcion}"
    end
  end
