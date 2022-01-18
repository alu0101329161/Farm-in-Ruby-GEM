
module Granja
    class DSLFuncionalidad

        attr_reader :identificador, :bienestar_animal, :beneficio_animal, :productividad_animal

        # Constructor de la clase DSLFuncion
        # @note se aceptan un identificador y un bloque
        def initialize(identificador = nil, &block)
            @identificador = identificador
            @bienestar_animal = 0.0
            @beneficio_animal = 0.0
            @productividad_animal = 0.0
            
            if block_given?  
                if block.arity == 1
                    yield self
                else
                instance_eval(&block) 
                end
            end
        end

        #Guarda valor llamando a metodo de Module Funcion
        def beneficio(granja, options = {})
          @beneficio_animal = granja.beneficio_neto(granja)
        end

        #Guarda valor llamando a metodo de Module Funcion
        def bienestar(granja, options = {})
          @bienestar_animal = granja.bienestar(granja,options[:condiciones])
        end

        #Guarda valor llamando a metodo de Module Funcion
        def productividad(granja, options = {})
          @productividad_animal = granja.indicador_productividad(granja,options[:condiciones])
        end

        #Cadena formateada con los cáculos
        def to_s
            "La granja #{@identificador}, tiene un beneficio #{@beneficio_animal} %,tiene bienestar #{@bienestar_animal}, y una productividad #{@productividad_animal}"
        end

    end
end