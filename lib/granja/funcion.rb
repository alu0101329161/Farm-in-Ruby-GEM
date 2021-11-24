# Clase para almacenar funcionalidades de la granja
class Funcion

  # @overload ggeter de los atributos
  attr_reader :condicion_de_vida, :cuidado, :reproduccion
  
  # Metodo para inicializar atrubutos de la clase Funcion
  # @note acepta 3 parametro de cualquier tipo
  # @return atributos de la clase
  def initialize(condicion_vida = "", cuidado = "", reproduccion = "")
    @condicion_de_vida = condicion_vida
    @cuidado = cuidado
    @reproduccion = reproduccion
   end
 
   # Metodo para impirmir las variables de instancia
   # @return String
   def to_s
     "Las condiciones de vida de los animales son: #{@condicion_de_vida} \n La calidad de los cuidados es #{@cuidado} \n y el nivel de reproduccion es #{@reproduccion}"
   end
end
