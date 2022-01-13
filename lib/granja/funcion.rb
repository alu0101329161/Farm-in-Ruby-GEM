module Granja
  # Modulo para almacenar funcionalidades de la granja
  module Funcion
    
    # @note Constante del modulo
    CONDICIONES_DE_VIDA = :campo_abierto
    CONDICIONES_DE_VIDA1 = :jaula
    CONDICIONES_DE_VIDA2 = :establo

    # Metodo para procesar cuidadps
    # @return String
    def cuidados(cantidad, lista)
      lista.collect{|item| item + cantidad}
    end

    # Metodo para procesar reproduccion
    # @return String
    def reproduccion(cantidad, lista)
      dias = cantidad * 30
      lista.select{|item| item > dias}
    end

    # Metodo para procesar el bienestar del animal
    # En caso de condiciones optima retorna 100
    # En caso contratio calculo el ratio
    def bienestar(granja, condiciones)

      max = granja.almacen.collect{|x| x.peso / x.edad}.max
      ratio = granja.almacen.sum{|x| x.peso/x.edad} / granja.numero.to_f

      if(condiciones == CONDICIONES_DE_VIDA)
        return ((ratio * 100) / max).round(1)
      else
        return  ((ratio * 50) / max).round(1)
      end
    end

    # Metodo para procesar Beneficio de una granja
    # @return Media de peso o edad entre numero de animales
    def beneficio_neto(granja)
      if(granja.destino == :sacrificio)
        return ((granja.precio_venta - granja.precio_unitario / (granja.almacen.sum{|x| x.peso} /granja.numero.to_f)) * 100).round(1)
      else
        return ((granja.precio_venta - granja.precio_unitario / (granja.almacen.sum{|x| x.edad} /granja.numero.to_f)) * 100).round(1)
      end
    end

    # Metodo para procesar indice de productividad
    # @return media de evaluacion de 2 valores
    def indicador_productividad(granja, condiciones)
      return (evalBienestar(bienestar(granja,condiciones)) + evalBeneficio(beneficio_neto(granja))) / 2
    end
    
    # Metodo para procesar bienestar
    # Devuelve entero
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

  end
end