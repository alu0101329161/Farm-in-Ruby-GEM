RSpec.describe Granja do
    describe Ganadera do

        before :each do
            @test1 = Ganadera.new(:bovino,:leche,50,50.1,50.1)
            @test2 = Ganadera.new(:ovino,:leche,51,51.2,51.2)
            @test3 = Ganadera.new(:caprino,:sacrificio,52,52.3,52.3)
            @test4 = Ganadera.new(:porcino,:sacrificio,53,53.4,53.4)
            @tanda  = [@test1, @test2, @test3, @test4]
        end

        context "Atributos de la clase Datos" do
            it "Tiene una clase para almacenar los datos de la granja" do
              expect(Ganadera.new()).not_to be(nil)
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
            it "Se obtiene una cadena con la informaci´on de la granja ganadera correctamente formateada" do
                expect(@test1.to_s).to eq("La granja ganadera tiene como ganado a los bovino, el destino es leche, el numero es 50, con precio unitario de 50.1 y un precio de venta de 50.1")
                expect(@test2.to_s).to eq("La granja ganadera tiene como ganado a los ovino, el destino es leche, el numero es 51, con precio unitario de 51.2 y un precio de venta de 51.2")
                expect(@test3.to_s).to eq("La granja ganadera tiene como ganado a los caprino, el destino es sacrificio, el numero es 52, con precio unitario de 52.3 y un precio de venta de 52.3")
                expect(@test4.to_s).to eq("La granja ganadera tiene como ganado a los porcino, el destino es sacrificio, el numero es 53, con precio unitario de 53.4 y un precio de venta de 53.4")
            end
        end

        context "Herencia de la clase Ganadera" do
            it "Se espera que una instancia de la clase Ganadera sea una Granja Ganadera" do
              expect(@test1).to be_a_kind_of(Ganadera)
              expect(@test2).to be_a_kind_of(Ganadera)
              expect(@test3.is_a? Ganadera).to eq(true)
              expect(@test4.is_a? Ganadera).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Dato" do
              expect(@test1).to be_a_kind_of(Datos)
              expect(@test2).to be_a_kind_of(Datos)
              expect(@test3.is_a? Datos).to eq(true)
              expect(@test4.is_a? Datos).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Object" do
                expect(@test1).to be_a_kind_of(Object)
                expect(@test2).to be_a_kind_of(Object)
                expect(@test3.is_a? Object).to eq(true)
                expect(@test4.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Ganadera sea un Basic Object" do
                expect(@test1.is_a? BasicObject).to eq(true)
                expect(@test2.is_a? BasicObject).to eq(true)
                expect(@test3.is_a? BasicObject).to eq(true)
                expect(@test4.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Ganadera sea un Animal" do
              expect(@test1).not_to be_a_kind_of (Animal)
              expect(@test2).not_to be_a_kind_of (Animal)
              expect(@test3.is_a? Animal).to eq(false)
              expect(@test4.is_a? Animal).to eq(false)
            end
            it "No se espera que una instancia de la clase Ganadera sea un Ganado" do
                expect(@test1).not_to be_a_kind_of (Ganado)
                expect(@test2).not_to be_a_kind_of (Ganado)
                expect(@test3.is_a? Ganado).to eq(false)
                expect(@test4.is_a? Ganado).to eq(false)
            end
        end

        context "Enumerable" do
            it "Existe un módulo comparable" do
                expect(@test1).to be_a_kind_of (Enumerable)
            end
            it "Se podra acceder con []" do
                expect(@test1[0]).to eq(:bovino)
                expect(@test1[-6]).to eq(:bovino)
                expect(@test2[:destino]).to eq(:leche)
                expect(@test2["numero"]).to eq(51)
            end
            it "Maximo y minimo" do
                expect(@tanda.max).to eq(@test4)
                expect(@tanda.min).to eq(@test1)
            end
            it "Metodo sort" do
                tanda = [@test2, @test1, @test4, @test3]
                expect(tanda.sort).to eq([@test1, @test2, @test3, @test4])
            end
            it "Metodo collect" do
                test1 = Ganadera.new(:bovino,:leche,500,50.1,50.1)
                test2 = Ganadera.new(:ovino,:leche,510,51.2,51.2)
                test3 = Ganadera.new(:caprino,:sacrificio,520,52.3,52.3)
                test4 = Ganadera.new(:porcino,:sacrificio,530,53.4,53.4)
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

        context "Funciones" do
            it "Sistema de Gestion" do
                expect(@test1.sistema_gestion).to eq(:jaula)
                expect(@test2.sistema_gestion).to eq(:campo_abierto)
                expect(@test3.sistema_gestion).to eq(:campo_abierto)
                expect(@test4.sistema_gestion).to eq(:jaula)
            end
            it "Sistema de reproduccion" do
                expect(@test1.estimulacion).to eq("Se ha de poder proporcionar a todos los animales de una granja la cantidad de antibiotico 100")
                expect(@test2.estimulacion).to eq("Se ha de poder proporcionar a todos los animales de una granja la cantidad de antibiotico 102")
                expect(@test3.estimulacion).to eq("Se ha de poder proporcionar a todos los animales de una granja la cantidad de antibiotico 104")
                expect(@test4.estimulacion).to eq("Se ha de poder proporcionar a todos los animales de una granja la cantidad de antibiotico 106")
            end 
            it "Sistema de poblacion" do

                @test1.add_animal(Ganado.new(:bovino,:carne,:herbívoro,"1111",750,:macho,9000.01))
                @test1.add_animal(Ganado.new(:porcino,:piel,:omnívoro,"2222",800,:macho,9050.02))
                @test1.add_animal(Ganado.new(:ovino,:leche,:herbívoro,"3333",234,:hembra,7000.03))
                @test1.add_animal(Ganado.new(:caprino,:carne,:herbívoro,"4444",287,:hembra,5000.04))

                expect(@test1.poblacion).to eq("Hay 2 de animales preparados para la reproduccion")
            end 
        end
  
    end
end