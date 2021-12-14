RSpec.describe Granja do
    describe Granja::Animal do

      before :each do
        @test1 = Granja::Animal.new("1111",284,:macho,9000.01)
        @test2 = Granja::Animal.new("2222",285,:macho,9050.02)
        @test3 = Granja::Animal.new("3333",286,:hembra,7000.03)
        @test4 = Granja::Animal.new("4444",287,:hembra,5000.04)
      end

      context "Atributos de la clase Granja::Animal" do
        it "Tiene una clase para representar Granja::Animales" do
            expect(Granja::Animal.new()).not_to be(nil)
        end
        it "Tiene un atributo para identificar al Granja::Animal" do
            expect(@test1.identificador).to eq("1111")
            expect(@test2.identificador).to eq("2222")
            expect(@test3.identificador).to eq("3333")
            expect(@test4.identificador).to eq("4444")
        end
        it "Tiene un atributo con la edad del Granja::Animal en dias" do
            expect(@test1.edad).to eq(284)
            expect(@test2.edad).to eq(285)
            expect(@test3.edad).to eq(286)
            expect(@test4.edad).to eq(287)
        end
        it "Tiene un atributo con el sexo del Granja::Animal" do
            expect(@test1.sexo).to eq(:macho)
            expect(@test2.sexo).to eq(:macho)
            expect(@test3.sexo).to eq(:hembra)
            expect(@test4.sexo).to eq(:hembra)
        end
        it "Tiene un atributo con el peso del Granja::Animal en gramos" do
            expect(@test1.peso).to eq(9000.01)
            expect(@test2.peso).to eq(9050.02)
            expect(@test3.peso).to eq(7000.03)
            expect(@test4.peso).to eq(5000.04)
        end
        it "Se obtiene una cadena con la informacion del Granja::Animal correctamente formateada" do
            expect(@test1.to_s).to eq("El animal 1111 con 284 dias de vida es macho con un peso de 9000.01 gramos")
            expect(@test2.to_s).to eq("El animal 2222 con 285 dias de vida es macho con un peso de 9050.02 gramos")
            expect(@test3.to_s).to eq("El animal 3333 con 286 dias de vida es hembra con un peso de 7000.03 gramos")
            expect(@test4.to_s).to eq("El animal 4444 con 287 dias de vida es hembra con un peso de 5000.04 gramos")
        end
        it "El Numero de animales instanciados es" do
          expect(Granja::Animal.count).to eq(29)
        end

      end

      context "Herencia de la clase Animal" do
        it "Se espera que una instancia de la clase Animal sea un Animal" do
            expect(@test1).to be_a_kind_of (Granja::Animal)
            expect(@test2).to be_a_kind_of (Granja::Animal)
            expect(@test3.is_a? Granja::Animal).to eq(true)
            expect(@test4.is_a? Granja::Animal).to eq(true)
        end
        it "Se espera que una instancia de la clase Animal sea un objeto" do
            expect(@test1.is_a? Object).to eq(true)
            expect(@test2.is_a? Object).to eq(true)
            expect(@test3.is_a? Object).to eq(true)
            expect(@test4.is_a? Object).to eq(true)
        end
        it "Se espera que una instancia de la clase Animal sea un objeto b´asico" do
            expect(@test1.is_a? BasicObject).to eq(true)
            expect(@test2.is_a? BasicObject).to eq(true)
            expect(@test3.is_a? BasicObject).to eq(true)
            expect(@test4.is_a? BasicObject).to eq(true)
        end
        it "No se espera que una instancia de la clase Animal sea una cadena" do
            expect(@test1).not_to be_a_kind_of (String)
            expect(@test2.is_a? String).to eq(false)
            expect(@test3.is_a? String).to eq(false)
            expect(@test3.is_a? String).to eq(false)
        end
        it "No se espera que una instancia de la clase Animal sea un numero" do
            expect(@test1).not_to be_a_kind_of (Numeric)
            expect(@test2.is_a? Numeric).to eq(false)
            expect(@test3.is_a? Numeric).to eq(false)
            expect(@test4.is_a? Numeric).to eq(false)
        end
      end

      context "Comparable" do
        it "Existe un módulo comparable" do
            expect(Granja::Animal).is_a?(Comparable)
        end
        it "animal1 < animal2" do  
            expect(@test1 < @test2).to eq(true)
            expect(@test4 < @test1).to eq(true)
        end
        it "animal1 <= animal2" do  
            expect(@test1 <= @test2).to eq(true)
            expect(@test4 < @test1).to eq(true)
        end
        it "animal1 > animal2" do  
            expect(@test2 > @test1).to eq(true)
            expect(@test1 > @test4).to eq(true)
        end
        it "animal1 >= animal2" do  
            expect(@test3 >= @test4).to eq(true)
            expect(@test1 > @test4).to eq(true)
        end
        it "animal1 == animal2" do  
            expect(@test3 == @test4).to eq(false)
            expect(@test1 == @test4).to eq(false)
        end
        it "animal1 between(animal2 y animal3)" do  
            expect(@test3.between?(@test1,@test2)).to eq(false)
        end
      end

    end
end