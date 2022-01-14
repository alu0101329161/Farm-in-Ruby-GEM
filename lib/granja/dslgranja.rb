

module Granja
    class DSLGranja

        def initialize(identificador, &block)
            @datos = []
            @animales = []
            
            if block_given?  
                if block.arity == 1
                    yield self
                else
                instance_eval(&block) 
                end
            end
        end

        def ejemplares(text, options = {})
            ejemplar = text
            ejemplar << " (#{options[:edad]})" if options[:edad]
            ejemplar << " (#{options[:peso]})" if options[:peso]
            ejemplar << " (#{options[:precio_compra]})" if options[:precio_compra]
            ejemplar << " (#{options[:precio_venta]})" if options[:precio_venta]
        
            @animales << ejemplares
        end

        def datos(text, options = {})
            dato = text
            dato << " (#{options[:amount]})" if options[:amount]
            dato << " (#{options[:descripcion]})" if options[:descripcion]
            dato << " (#{options[:tipo]})" if options[:tipo]

            @datos << dato
        end
    end
end