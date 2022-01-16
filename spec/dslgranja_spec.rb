

RSpec.describe Granja do
    describe Granja::DSLGranja do

        granja_1 = Granja::DSLGranja.new(12345678) do
            dato "Porcinos gucci",
            :descripcion => "PyME - Pequena y mediana empresa",
            :tipo => :porcino
            ejemplar "12345678-00000001",
            :edad => 324,
            :peso => 701.2,
            :precio_compra => 4.12,
            :precio_venta => 4.60
            ejemplar "12345678-00000002",
            :edad => 427,
            :peso => 1250.2,
            :precio_compra => 1.75,
            :precio_venta => 3.85
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

        granja_4 = Granja::DSLGranja.new(1234)

        context "Atributos de la clase Datos" do
            it "Tiene una clase para almacenar los datos de la granja" do
                expect(Granja::DSLGranja.new()).not_to be(nil)
            end
            it "Tiene un metodo para almacenar los datos" do
                expect(granja_4.dato("Porcinos gucci",:descripcion => "PyME - Pequena y mediana empresa",:tipo => :porcino)).to eq([1234, "Porcinos gucci", "PyME - Pequena y mediana empresa", :porcino])
                expect(Granja::DSLGranja.method_defined?(:dato)).to eq(true)
            end
            it "Tiene un variable para almacenar los datos" do
                expect(granja_1.datos).to eq([12345678, "Porcinos gucci", "PyME - Pequena y mediana empresa", :porcino])
                expect(granja_2.datos).to eq([12345678, "Cabras vivos", "ME - mediana empresa", :caprino])
                expect(granja_3.datos).to eq([12345678, "Ovejas gucci", "G - gran empresa", :ovino])
            end
            it "Tiene un metodo para los ejemplares" do
                expect(Granja::DSLGranja.method_defined?(:ejemplar)).to eq(true)
            end
            it "Tiene variable para almacenar para los ejemplares" do
                expect(granja_1.animales).to eq([["12345678-00000001", 324, 701.2, 4.12, 4.6], ["12345678-00000002", 427, 1250.2, 1.75, 3.85]])
                expect(granja_2.animales).to eq([["12345679-00000002", 327, 825.3, 3.18, 6.89], ["12345679-00000003", 567, 1350.4, 1.25, 2.75]])
                expect(granja_3.animales).to eq([["12345679-00000002", 365, 700.2, 4.25, 4.75], ["12345679-00000008", 465, 1200.2, 1.25, 2.75]])

            end
            it "Se obtiene una cadena con la informacion de la granja correctamente formateada" do
                expect(granja_1.to_s).to eq( "La granja de identificacion 12345678 , con los datos de nombre Porcinos gucci, descripcion PyME - Pequena y mediana empresa y tipo porcino\n\nTiene los siguientes ejemplares: \n\nEjemplar 1 Su identificador es 12345678-00000001, su edad es 324,su peso es 701.2 , su precio de compra 4.12, y de venta es 4.6\nEjemplar 2 Su identificador es 12345678-00000002, su edad es 427,su peso es 1250.2 , su precio de compra 1.75, y de venta es 3.85\n")
                expect(granja_2.to_s).to eq( "La granja de identificacion 12345678 , con los datos de nombre Cabras vivos, descripcion ME - mediana empresa y tipo caprino\n\nTiene los siguientes ejemplares: \n\nEjemplar 1 Su identificador es 12345679-00000002, su edad es 327,su peso es 825.3 , su precio de compra 3.18, y de venta es 6.89\nEjemplar 2 Su identificador es 12345679-00000003, su edad es 567,su peso es 1350.4 , su precio de compra 1.25, y de venta es 2.75\n")
            end
        end


    end
end
