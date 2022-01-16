
module Granja
    class DSLGranja

        attr_reader :datos, :animales

        def initialize(identificador = nil, &block)
            @datos = [identificador]
            @animales = []
            
            if block_given?  
                if block.arity == 1
                    yield self
                else
                instance_eval(&block) 
                end
            end
        end

        def ejemplar(identificacion, options = {})
            ejemplar = []
            ejemplar << identificacion
            ejemplar << options[:edad] if options[:edad]
            ejemplar << options[:peso] if options[:peso]
            ejemplar << options[:precio_compra] if options[:precio_compra]
            ejemplar << options[:precio_venta] if options[:precio_venta]
        
            @animales << ejemplar
        end

        def dato(text, options = {})
            @datos << text
            @datos << options[:descripcion] if options[:descripcion]
            @datos << options[:tipo] if options[:tipo]
        end

        def to_s
            output = "La granja de identificacion #{@datos[0]} , con los datos de nombre #{@datos[1]}, descripcion #{@datos[2]} y tipo #{@datos[3]}\n\n"
            output << "Tiene los siguientes ejemplares: \n\n"
            @animales.each_with_index do |ejemplar, index|
              output << "Ejemplar #{index + 1} Su identificador es #{ejemplar[0]}, su edad es #{ejemplar[1]},"
              output << "su peso es #{ejemplar[2]} , su precio de compra #{ejemplar[3]}, y de venta es #{ejemplar[4]}\n"
            end
        
            return output
        end
    end
end