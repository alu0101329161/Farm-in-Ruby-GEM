
module Granja
    class DSLFuncionalidad

        attr_reader :identificador, :bienestar, :beneficio, :productividad

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

        def beneficio(granja, options = {})
            medio = granja.animales.sum{|x| x[4] - x[3]} /granja.animales.length
            peso = granja.animales.sum{|x| x[2]} / granja.animales.length.to_f
            @beneficio_animal = ((medio / peso)* 100).round(2)
        end

        def bienestar(granja, options = {})
            max = granja.animales.collect{|x| x[2] / x[1]}.max
            ratio = granja.animales.sum{|x| x[2] / x[1]} / granja.animales.length
            if options[:condiciones] == :campo
                @bienestar_animal = ((ratio * 100) / max).round(1)
            else
                @bienestar_animal = ((ratio * 50) / max).round(1)
            end
        end

        def productividad(granja, options = {})
            value_bienestar = bienestar(granja, options)
            value_beneficio = beneficio(granja)

            @productividad_animal = ((evalBienestar(value_bienestar) + evalBeneficio(value_beneficio)) / 2).ceil

        end

        def evalBienestar(value)
            if value <= 20
              return 1
            elsif value >= 80
              return 3
            else
              return 2
            end
        end
      
          # Metodo para procesar Beneficio
          # Devuelvo entero 
        def evalBeneficio(value)
            if value < 10 
              return 1
            elsif value > 50
              return 3
            else
              return 2
            end
        end

        def to_s
            "La granja #{@identificador}, tiene un beneficio #{@beneficio_animal} %,tiene bienestar #{@bienestar_animal}, y una productividad #{@productividad_animal}"
        end

    end
end