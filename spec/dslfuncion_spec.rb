
RSpec.describe Granja do
    describe Granja::DSLFuncionalidad do

        before :each do

            granja_1 = Granja::DSLGranja.new(12345678) do
                dato "Porcinos gucci",
                :descripcion => "PyME - Pequena y mediana empresa",
                :tipo => :porcino
                ejemplar "12345678-00000001",
                :edad => 324,
                :peso => 701.2,
                :precio_compra => 4.12,
                :precio_venta => 120
                ejemplar "12345678-00000002",
                :edad => 427,
                :peso => 1250.2,
                :precio_compra => 1.75,
                :precio_venta => 896
            end

            granja_2 = Granja::DSLGranja.new(12345678) do
                dato "Cabras vivos",
                :descripcion => "ME - mediana empresa",
                :tipo => :caprino
                ejemplar "12345679-00000002",
                :edad => 327,
                :peso => 825.3,
                :precio_compra => 3.18,
                :precio_venta => 6.89
                ejemplar "12345679-00000003",
                :edad => 567,
                :peso => 1350.4,
                :precio_compra => 1.25,
                :precio_venta => 2.75
            end

            granja_3 = Granja::DSLGranja.new(12345678) do
                dato "Ovejas gucci",
                :descripcion => "G - gran empresa",
                :tipo => :ovino
                ejemplar "12345679-00000002",
                :edad => 365,
                :peso => 700.2,
                :precio_compra => 4.25,
                :precio_venta => 4.75
                ejemplar "12345679-00000008",
                :edad => 465,
                :peso => 1200.2,
                :precio_compra => 1.25,
                :precio_venta => 2.75
            end
            @funcionalidad1 = Granja::DSLFuncionalidad.new(12345678) do
                beneficio granja_1
                bienestar granja_1, :condiciones => :campo
                productividad granja_1, :condiciones => :campo
            end
            @funcionalidad2 = Granja::DSLFuncionalidad.new(12345678) do
                beneficio granja_2
                bienestar granja_2, :condiciones => :campo
                productividad granja_2, :condiciones => :campo
            end
            @funcionalidad3 = Granja::DSLFuncionalidad.new(12345678) do
                beneficio granja_3
                bienestar granja_3, :condiciones => :establo
                productividad granja_3, :condiciones => :establo
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
                expect(@funcionalidad1.to_s).to eq("La granja 12345678, tiene un beneficio 51.76 %,tiene bienestar 87.0, y una productividad 3")
                expect(@funcionalidad2.to_s).to eq("La granja 12345678, tiene un beneficio 0.24 %,tiene bienestar 97.2, y una productividad 2")
                expect(@funcionalidad3.to_s).to eq("La granja 12345678, tiene un beneficio 0.11 %,tiene bienestar 43.6, y una productividad 1")
            end
        end

    end
end