RSpec.describe Granja do
    describe Ganado do

        context "Atributos de la clase Ganado" do
            it "Tiene una clase para representar ganado" do
                expect(Ganado.new()).not_to eq(nil)
            end
        end

        context "Herencia de la clase Ganado" do

        end

    end
end