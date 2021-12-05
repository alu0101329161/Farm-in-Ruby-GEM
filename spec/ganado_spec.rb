RSpec.describe Granja do
    describe Ganado do

        before :each do
          @test1 = Ganado.new("bovino","carne","herbívoro")
          @test2 = Ganado.new("porcino","piel","omnívoro")
          @test3 = Ganado.new("ovino","leche","herbívoro")
          @test4 = Ganado.new("caprino","carne","herbívoro")
        end

        context "Atributos de la clase Ganado" do
            it "Tiene una clase para representar ganado" do
                expect(Ganado.new()).not_to eq(nil)
            end
            it "Tiene un atributo para la raza" do
                expect(@test1.raza).to eq("bovino")
                expect(@test2.raza).to eq("porcino")
                expect(@test3.raza).to eq("ovino")
                expect(@test4.raza).to eq("caprino")
            end
            it "Tiene un atributo para el tipo de aprovechamiento " do
                expect(@test1.aprovechamiento).to eq("carne")
                expect(@test2.aprovechamiento).to eq("piel")
                expect(@test3.aprovechamiento).to eq("leche")
                expect(@test4.aprovechamiento).to eq("carne")
            end
            it "Tiene un atributo para su tipo de alimentacion " do
                expect(@test1.alimentacion).to eq("herbívoro")
                expect(@test2.alimentacion).to eq("omnívoro")
                expect(@test3.alimentacion).to eq("herbívoro")
                expect(@test4.alimentacion).to eq("herbívoro")
            end
            it "Se obtiene una cadena con la informacion del ganado correctamente formateada" do
                expect(@test1.to_s).to eq("La cabeza de ganado de raza bovino con aprovechamiento tipo carne y herbívoro")
                expect(@test2.to_s).to eq("La cabeza de ganado de raza porcino con aprovechamiento tipo piel y omnívoro")
                expect(@test3.to_s).to eq("La cabeza de ganado de raza ovino con aprovechamiento tipo leche y herbívoro")
                expect(@test4.to_s).to eq("La cabeza de ganado de raza caprino con aprovechamiento tipo carne y herbívoro")
            end
        end

        context "Herencia de la clase Ganado" do

        end

    end
end