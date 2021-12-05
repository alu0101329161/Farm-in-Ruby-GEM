RSpec.describe Granja do
    describe Animal do

      before :each do
        @test1 = Animal.new("1111",284,"macho",9000)
        @test2 = Animal.new("2222",285,"macho",9050)
        @test3 = Animal.new("3333",286,"hembra",7000)
        @test4 = Animal.new("4444",287,"hembra",5000)
      end

      context "Atributos de la clase Animal" do
        it "Tiene una clase para representar animales" do
            expect(Animal.new()).not_to eq(nil)
        end
        it "Tiene un atributo para identificar al animal" do
            expect(@test1.identificador).to eq("1111")
            expect(@test2.identificador).to eq("2222")
            expect(@test3.identificador).to eq("3333")
            expect(@test4.identificador).to eq("4444")
        end
        it "Tiene un atributo con la edad del animal en dias" do
            expect(@test1.edad).to eq(284)
            expect(@test2.edad).to eq(285)
            expect(@test3.edad).to eq(286)
            expect(@test4.edad).to eq(287)
        end
        it "Tiene un atributo con el sexo del animal" do
            expect(@test1.sexo).to eq("macho")
            expect(@test2.sexo).to eq("macho")
            expect(@test3.sexo).to eq("hembra")
            expect(@test4.sexo).to eq("hembra")
        end
        it "Tiene un atributo con el peso del animal en gramos" do
            expect(@test1.peso).to eq(9000)
            expect(@test2.peso).to eq(9050)
            expect(@test3.peso).to eq(7000)
            expect(@test4.peso).to eq(5000)
        end
        it "Tiene un metodo para poder imprimir" do
            expect(@test1.to_s).to eq("El animal 1111 con 284 dias de vida es macho con un peso de 9000 gramos")
            expect(@test2.to_s).to eq("El animal 2222 con 285 dias de vida es macho con un peso de 9050 gramos")
            expect(@test3.to_s).to eq("El animal 3333 con 286 dias de vida es hembra con un peso de 7000 gramos")
            expect(@test4.to_s).to eq("El animal 4444 con 287 dias de vida es hembra con un peso de 5000 gramos")
        end

      end
      
      context "Herencia de la clase Animal" do

      end
    end
end