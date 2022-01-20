
RSpec.describe Granja do
    describe Granja::DSLFuncionalidad do

        before :each do

            caprino1 = Granja::Ganado.new("3333",287,:hembra,5000.04,:caprino,:carne,:herbívoro)
            caprino2 = Granja::Ganado.new("4444",287,:macho,5000.07,:caprino,:carne,:herbívoro)
            ovino1 = Granja::Ganado.new("3333",890,:hembra,700.03,:ovino,:leche,:herbívoro)
            ovino2 = Granja::Ganado.new("3333",100,:hembra,700.03,:ovino,:leche,:herbívoro)
            
            granja_1 = Granja::Ganadera.new(2,"Granja de ovinos","Ovinos muertos",:ovino,:leche,1,1.2,100.2,[ovino2])
            granja_2 = Granja::Ganadera.new(2,"Granja de ovinos","Ovinos muertos",:ovino,:leche,2,51.2,530.2, [ovino1])
            granja_3 = Granja::Ganadera.new(3,"Granja de caprinos","Caprinos muertos",:caprino,:sacrificio,2,52.3,520.3, [caprino1, caprino2])

            @funcionalidad1 = Granja::DSLFuncionalidad.new(12345679) do
                beneficio granja_1
                bienestar granja_1, :condiciones => :campo_abierto
                productividad granja_1, :condiciones => :campo_abierto
            end
            @funcionalidad2 = Granja::DSLFuncionalidad.new(12345679) do
                beneficio granja_2
                bienestar granja_2, :condiciones => :campo
                productividad granja_2, :condiciones => :campo
            end
            @funcionalidad3 = Granja::DSLFuncionalidad.new(12345610) do
                beneficio granja_3
                bienestar granja_3, :condiciones => :jaula
                productividad granja_3, :condiciones => :jaula
            end
        end

        context "Atributos de la clase Funcionalidad" do
            it "Tiene una clase para almacenar las funcionalidades de la granja" do
                expect(Granja::DSLFuncionalidad.new()).not_to be(nil)
            end
            it "Tiene un metodo para calcular el beneficio de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:beneficio)).to eq(true)
            end
            it "Tiene un metodo para calcular el bienestar de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:bienestar)).to eq(true)
            end
            it "Tiene un metodo para calcular la productividad de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:productividad)).to eq(true)
            end
            it "Se obtiene una cadena con la informacion de las funcionalidades correctamente formateada" do
                expect(@funcionalidad1.to_s).to eq( "La granja 12345679, tiene un beneficio 99.0 %,tiene bienestar 100.0, y una productividad 3")
                expect(@funcionalidad2.to_s).to eq("La granja 12345679, tiene un beneficio 107.6 %,tiene bienestar 25.0, y una productividad 2")
                expect(@funcionalidad3.to_s).to eq("La granja 12345610, tiene un beneficio 9.4 %,tiene bienestar 50.0, y una productividad 1")
            end
        end

    end
end