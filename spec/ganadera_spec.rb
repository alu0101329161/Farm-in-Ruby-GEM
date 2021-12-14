RSpec.describe Granja do
    describe Granja::Ganadera do

        before :each do

            @bovino1 = Granja::Ganado.new("1111",1000,:macho,9000.01,:bovino,:carne,:herbívoro)
            @bovino2 = Granja::Ganado.new("2222",284,:hembra,9000.05,:bovino,:piel,:omnívoro)
            @caprino1 = Granja::Ganado.new("3333",287,:hembra,5000.04,:caprino,:carne,:herbívoro)
            @caprino2 = Granja::Ganado.new("4444",287,:macho,5000.07,:caprino,:carne,:herbívoro)
            @ovino1 = Granja::Ganado.new("3333",286,:hembra,7000.03,:ovino,:leche,:herbívoro)
            @ovino2 = Granja::Ganado.new("3333",286,:hembra,7000.03,:ovino,:leche,:herbívoro)
            @porcino1 = Granja::Ganado.new("2222",285,:macho,9050.02,:porcino,:piel,:omnívoro)
            @porcino2 = Granja::Ganado.new("2222",285,:macho,9050.02,:porcino,:piel,:omnívoro)

            @granja_bovinos = Granja::Ganadera.new(:bovino,:leche,2,50.1,50.1, [@bovino1, @bovino2])
            @granja_ovinos = Granja::Ganadera.new(:ovino,:leche,2,51.2,51.2, [@ovino1, @ovino2])
            @granja_caprinos = Granja::Ganadera.new(:caprino,:sacrificio,2,52.3,52.3, [@caprino1, @caprino2])
            @granja_porcinos = Granja::Ganadera.new(:porcino,:sacrificio,2,53.4,53.4, [@porcino1, @porcino2])

            @test1 = Granja::Ganadera.new(:bovino,:leche,50,50.1,50.1, [])
            @test2 = Granja::Ganadera.new(:ovino,:leche,51,51.2,51.2, [])
            @test3 = Granja::Ganadera.new(:caprino,:sacrificio,52,52.3,52.3, [])
            @test4 = Granja::Ganadera.new(:porcino,:sacrificio,53,53.4,53.4, [])
            @test5 = Granja::Ganadera.new()
            @tanda  = [@test1, @test2, @test3, @test4]
        end

        context "Atributos de la clase Datos" do
            it "Tiene una clase para almacenar los datos de la granja" do
              expect(Granja::Ganadera.new()).not_to be(nil)
            end
            it "Tiene un atributo para el tipo de ganado (bovino, ovino, caprino o porcino)" do
                expect(@test1.ganado).to eq(:bovino)
                expect(@test2.ganado).to eq(:ovino)
                expect(@test3.ganado).to eq(:caprino)
                expect(@test4.ganado).to eq(:porcino)
            end
            it "Tiene un atributo para el destino de los animales (leche, sacrificio)" do
                expect(@test1.destino).to eq(:leche)
                expect(@test2.destino).to eq(:leche)
                expect(@test3.destino).to eq(:sacrificio)
                expect(@test4.destino).to eq(:sacrificio)
            end
            it "Tiene un atributo para el numero de animales de la granja" do
                expect(@test1.numero).to eq(50)
                expect(@test2.numero).to eq(51)
                expect(@test3.numero).to eq(52)
                expect(@test4.numero).to eq(53)
            end
            it "Tiene un atributo para el precio unitario de los animales" do
                expect(@test1.precio_unitario).to eq(50.1)
                expect(@test2.precio_unitario).to eq(51.2)
                expect(@test3.precio_unitario).to eq(52.3)
                expect(@test4.precio_unitario).to eq(53.4)
            end
            it "Tiene un atributo para el precio de venta unitario de los animales" do
                expect(@test1.precio_venta).to eq(50.1)
                expect(@test2.precio_venta).to eq(51.2)
                expect(@test3.precio_venta).to eq(52.3)
                expect(@test4.precio_venta).to eq(53.4)
            end
            it "Tiene un atributo para almacenar los animales de la granja" do
                expect(@test1.almacen).not_to eq(nil)
                expect(@test2.almacen).not_to eq(nil)
                expect(@test3.almacen).not_to eq(nil)
                expect(@test4.almacen).not_to eq(nil)
            end
            it "Se obtiene una cadena con la informacion de la granja ganadera correctamente formateada" do
                expect(@test1.to_s).to eq("La granja ganadera tiene como ganado a los bovino, el destino es leche, el numero es 50, con precio unitario de 50.1 y un precio de venta de 50.1")
                expect(@test2.to_s).to eq("La granja ganadera tiene como ganado a los ovino, el destino es leche, el numero es 51, con precio unitario de 51.2 y un precio de venta de 51.2")
                expect(@test3.to_s).to eq("La granja ganadera tiene como ganado a los caprino, el destino es sacrificio, el numero es 52, con precio unitario de 52.3 y un precio de venta de 52.3")
                expect(@test4.to_s).to eq("La granja ganadera tiene como ganado a los porcino, el destino es sacrificio, el numero es 53, con precio unitario de 53.4 y un precio de venta de 53.4")
            end
        end

        context "Herencia de la clase Ganadera" do
            it "Existe un módulo comparable" do
                expect(@granja_bovinos).to be_a_kind_of (Enumerable)
            end
            it "Se espera que una instancia de la clase Ganadera sea una Granja Ganadera" do
              expect(@granja_bovinos).to be_a_kind_of(Granja::Ganadera)
              expect(@granja_bovinos).to be_a_kind_of(Granja::Ganadera)
              expect(@granja_caprinos.is_a? Granja::Ganadera).to eq(true)
              expect(@granja_caprinos.is_a? Granja::Ganadera).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Dato" do
              expect(@granja_bovinos).to be_a_kind_of(Granja::Datos)
              expect(@granja_bovinos).to be_a_kind_of(Granja::Datos)
              expect(@granja_caprinos.is_a? Granja::Datos).to eq(true)
              expect(@granja_caprinos.is_a? Granja::Datos).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Object" do
                expect(@granja_bovinos).to be_a_kind_of(Object)
                expect(@granja_bovinos).to be_a_kind_of(Object)
                expect(@granja_caprinos.is_a? Object).to eq(true)
                expect(@granja_caprinos.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Basic Object" do
                expect(@granja_bovinos.is_a? BasicObject).to eq(true)
                expect(@granja_bovinos.is_a? BasicObject).to eq(true)
                expect(@granja_caprinos.is_a? BasicObject).to eq(true)
                expect(@granja_caprinos.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Ganadera sea un Animal" do
              expect(@granja_bovinos).not_to be_a_kind_of (Granja::Animal)
              expect(@granja_bovinos).not_to be_a_kind_of (Granja::Animal)
              expect(@granja_caprinos.is_a? Granja::Animal).to eq(false)
              expect(@granja_caprinos.is_a? Granja::Animal).to eq(false)
            end
            it "No se espera que una instancia de la clase Ganadera sea un Ganado" do
                expect(@granja_bovinos).not_to be_a_kind_of (Granja::Ganado)
                expect(@granja_bovinos).not_to be_a_kind_of (Granja::Ganado)
                expect(@granja_caprinos.is_a? Granja::Ganado).to eq(false)
                expect(@granja_caprinos.is_a? Granja::Ganado).to eq(false)
            end
        end

        # Si no se le especifica bloque ruby crea uno por defecto {|obj| obj}
        context "Haciendo avícola Enumerable" do

            it "comprobrando el metodo all?" do
                expect(@granja_bovinos.all?(Numeric)).to eq(true)
                expect(@test5.all?(Numeric)).to eq(false)
                expect(@granja_caprinos.all?(Numeric)).to eq(true)
                expect(@granja_porcinos.all?(Numeric)).to eq(true)
            end
            it "comprobrando el metodo any?" do
                expect(@granja_porcinos.any?).to eq(true)
                expect(@granja_ovinos.any?).to eq(true)
                expect(@granja_bovinos.any?).to eq(true)
                expect(@test5.any?).to eq(false)
            end 
            it "comprobrando el metodo collect" do
                expect(@granja_bovinos.collect{|i| i}).to eq([2,50.1,50.1])
                expect(@granja_ovinos.collect{|i| i}).to eq([2,51.2,51.2])
                expect(@granja_caprinos.collect{|i| i}).to eq([2,52.3,52.3])
                expect(@granja_porcinos.collect{|i| i}).to eq([2,53.4,53.4])
            end
            it "comprobrando el metodo map" do
                expect(@granja_bovinos.map{|i| i}).to eq([2,50.1,50.1])
                expect(@granja_ovinos.map{|i| i}).to eq([2,51.2,51.2])
                expect(@granja_caprinos.map{|i| i}).to eq([2,52.3,52.3])
                expect(@granja_porcinos.map{|i| i}).to eq([2,53.4,53.4])
            end
            it "comprobrando el metodo count" do
                expect(@granja_bovinos.count).to eq(3)
                expect(@granja_caprinos.count).to eq(3)
                expect(@granja_porcinos.count).to eq(3)
                expect(@test5.count).to eq(3)
            end
            it "comprobrando el metodo detect" do
                expect(@granja_bovinos.detect {|i| i == 50.1}).to eq(50.1)
                expect(@granja_ovinos.detect {|i| i == 51.2}).to eq(51.2)
                expect(@granja_caprinos.detect {|i| i == 52.3}).to eq(52.3)
                expect(@granja_porcinos.detect {|i| i == 53.4}).to eq(53.4)
            end
            it "comprobrando el metodo find" do
                expect(@granja_bovinos.find {|i| i == 50.1}).to eq(50.1)
                expect(@granja_ovinos.find {|i| i == 51.2}).to eq(51.2)
                expect(@granja_caprinos.find {|i| i == 52.3}).to eq(52.3)
                expect(@granja_porcinos.find {|i| i == 53.4}).to eq(53.4)
            end
            it "comprobrando drop" do
                expect(@granja_bovinos.drop(1)).to eq([50.1,50.1])
                expect(@granja_ovinos.drop(2)).to eq([51.2])
                expect(@granja_caprinos.drop(3)).to eq([])
                expect(@granja_porcinos.drop(4)).to eq([])
            end
            it "comprobrando drop_while" do
                expect(@granja_bovinos.drop_while{|i| i != 50.1 }).to eq([50.1,50.1])
                expect(@granja_ovinos.drop_while{|i| i != 51.2 }).to eq([51.2,51.2])
                expect(@granja_caprinos.drop_while{|i| i != 52.3 }).to eq([52.3,52.3])
                expect(@granja_porcinos.drop_while{|i| i != 53.4 }).to eq([53.4,53.4])
            end
            it "comprobrando el max" do
                expect(@granja_bovinos.max).to eq(50.1)
                expect(@granja_ovinos.max).to eq(51.2)
                expect(@granja_caprinos.max).to eq(52.3)
                expect(@granja_porcinos.max).to eq(53.4)
            end
            it "comprobrando el min" do
                expect(@granja_bovinos.min).to eq(2)
                expect(@granja_ovinos.min).to eq(2)
                expect(@granja_caprinos.min).to eq(2)
                expect(@granja_porcinos.min).to eq(2)
            end
            it "comprobrando el sort" do
                expect(@granja_bovinos.sort).to eq([2, 50.1, 50.1])
                expect(@granja_ovinos.sort).to eq([2, 51.2, 51.2])
                expect(@granja_caprinos.sort).to eq([2, 52.3, 52.3])
                expect(@granja_porcinos.sort).to eq([2, 53.4, 53.4])
            end

        end

        context "Funciones" do
            it "Se podra acceder con []" do
                expect(@test1[0]).to eq(:bovino)
                expect(@test1[-6]).to eq(:bovino)
                expect(@test2[:destino]).to eq(:leche)
                expect(@test2["numero"]).to eq(51)
            end
            it "Sistema de Gestion" do
                expect(@test1.sistema_gestion).to eq(:jaula)
                expect(@test2.sistema_gestion).to eq(:campo_abierto)
                expect(@test3.sistema_gestion).to eq(:campo_abierto)
                expect(@test4.sistema_gestion).to eq(:jaula)
            end
            it "Sistema de cuidados" do
                expect(@granja_bovinos.estimulacion(100.2)).to eq("Hay 1 animales que necesitan una cantidad 100.2 cl de antibioticos mensual")
                expect(@granja_ovinos.estimulacion(200.2)).to eq("Hay 2 animales que necesitan una cantidad 200.2 cl de antibioticos mensual")
                expect(@granja_caprinos.estimulacion(300.2)).to eq("Hay 2 animales que necesitan una cantidad 300.2 cl de antibioticos mensual")
                expect(@granja_porcinos.estimulacion(400.2)).to eq("Hay 2 animales que necesitan una cantidad 400.2 cl de antibioticos mensual")
            end 
            it "Sistema de reproduccion" do
                expect(@granja_bovinos.poblacion(2)).to eq("Hay 2 animales preparados para la reproduccion")
                expect(@granja_ovinos.poblacion(2)).to eq("Hay 2 animales preparados para la reproduccion")
                expect(@granja_caprinos.poblacion(2)).to eq("Hay 2 animales preparados para la reproduccion")
                expect(@granja_porcinos.poblacion(2)).to eq("Hay 2 animales preparados para la reproduccion")
            end 
        end
        context "Array" do
            it "Maximo y minimo" do
                expect(@tanda.max).to eq(@test4)
                expect(@tanda.min).to eq(@test1)
            end
            it "Metodo sort" do
                tanda = [@test2, @test1, @test4, @test3]
                expect(tanda.sort).to eq([@test1, @test2, @test3, @test4])
            end
            it "Metodo collect" do
                test1 = Granja::Ganadera.new(:bovino,:leche,500,50.1,50.1)
                test2 = Granja::Ganadera.new(:ovino,:leche,510,51.2,51.2)
                test3 = Granja::Ganadera.new(:caprino,:sacrificio,520,52.3,52.3)
                test4 = Granja::Ganadera.new(:porcino,:sacrificio,530,53.4,53.4)
                tanda  = [test1, test2, test3, test4]
                expect(@tanda.collect {|p| p * 10}).to eq(tanda)
            end
            it "Metodo detect" do
                expect(@tanda.detect {|p| p.ganado == :bovino && p.destino == :leche && p.numero == 50}).to eq(@test1)
                expect(@tanda.detect {|p| p.ganado == :ovino && p.destino == :leche && p.numero == 51}).to eq(@test2)
                expect(@tanda.detect {|p| p.ganado == :caprino && p.destino == :sacrificio && p.numero == 53}).to eq(nil)
            end
            it "Metodo find all" do
                expect(@tanda.find_all {|p| p.destino == :leche}).to eq([@test1,@test2])
                expect(@tanda.find_all {|p| p.destino == :sacrificio}).to eq([@test3, @test4])
                expect(@tanda.find_all {|p| p.ganado == :bovino}).to eq([@test1])
            end
        end
  
    end
end