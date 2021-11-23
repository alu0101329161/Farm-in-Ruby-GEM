RSpec.describe Granja do
  it "Tiene un número de version, usando la sintaxis semántica 0.1.0" do
    expect(Granja::VERSION).not_to be nil
  end
  describe Granja::Funcion do
    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Granja::Funcion.new()).not_to eq(nil)
    end
    it "Tiene un atributo para las condiciones de vida de los animales" do
      expect(Granja::Funcion.new("Saludable").condicion_de_vida).to eq("Saludable")
      expect(Granja::Funcion.new("Muy Saludable").condicion_de_vida).to eq("Muy Saludable")
      expect(Granja::Funcion.new("Poco Saludable").condicion_de_vida).to eq("Poco Saludable")
      expect(Granja::Funcion.new("Mala").condicion_de_vida).to eq("Mala")
   
    end
    it "Tiene un atributo para los cuidados de los animanles" do
      expect(Granja::Funcion.new("","1").cuidado).to eq("1")
      expect(Granja::Funcion.new("","3").cuidado).to eq("3")
      expect(Granja::Funcion.new("","6").cuidado).to eq("6")
      expect(Granja::Funcion.new("","10").cuidado).to eq("10")

    end

 
  end

end
