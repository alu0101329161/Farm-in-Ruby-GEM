RSpec.describe Granja do
    describe Animal do
        
      context "Atributos de la clase Animal" do
        it "Tiene una clase para representar animales" do
            expect(Animal.new()).not_to eq(nil)
        end

      end
      context "Herencia de la clase Animal" do

      end
    end
end