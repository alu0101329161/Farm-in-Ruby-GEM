RSpec.describe Granja do
    describe Ganadera do

        before :each do
            @test1 = Ganadera.new()
            @test2 = Ganadera.new()
            @test3 = Ganadera.new()
            @test4 = Ganadera.new()
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
  
    end
end