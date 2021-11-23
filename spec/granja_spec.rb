RSpec.describe Granja do
  it "Tiene un número de version, usando la sintaxis semántica 0.1.0" do
    expect(Granja::VERSION).not_to be nil
  end
  describe Granja::Funcion do
    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Granja::Funcion.new()).not_to eq(nil)
    end 
  end

end
