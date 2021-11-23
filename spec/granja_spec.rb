RSpec.describe Granja do
  it "Tiene un número de version, usando la sintaxis semántica 0.1.0" do
    expect(Granja::VERSION).not_to be nil
  end
  describe Granja::Funcion do
    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Granja::Funcion.new()).not_to eq(nil)
    end
    it "Tiene un atributo para las condiciones de vida de los animales" do
      expect(Granja::Funcion.new("Saludable").condicion_de_vida).not_to eq("Saludable")
      expect(Granja::Funcion.new("Muy Saludable").condicion_de_vida).not_to eq("Muy Saludable")
      expect(Granja::Funcion.new("Poco Saludable").condicion_de_vida).not_to eq("Poco Saludable")
      expect(Granja::Funcion.new("Mala").condicion_de_vida).not_to eq("Mala")
   
    end
 
  end

end
