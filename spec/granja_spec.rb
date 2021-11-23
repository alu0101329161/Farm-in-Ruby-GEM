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
    it "Tiene un atributo para la reproduccion de los animales" do
      expect(Granja::Funcion.new("","","1").reproduccion).to eq("1")
      expect(Granja::Funcion.new("","","3").reproduccion).to eq("3")
      expect(Granja::Funcion.new("","","6").reproduccion).to eq("6")
      expect(Granja::Funcion.new("","","10").reproduccion).to eq("10")

    end
    it "Tiene un metodo para poder imprimir" do
      expect(Granja::Funcion.new("Saludables","Buena","10").to_s).to eq("Las condiciones de vida de los animales son: Saludables \n La calidad de los cuidados es Buena \n y el nivel de reproduccion es 10")
      expect(Granja::Funcion.new("Saludables","Mala","5").to_s).to eq("Las condiciones de vida de los animales son: Saludables \n La calidad de los cuidados es Mala \n y el nivel de reproduccion es 5")
      expect(Granja::Funcion.new("Poca","3","2").to_s).to eq("Las condiciones de vida de los animales son: Poca \n La calidad de los cuidados es 3 \n y el nivel de reproduccion es 2")
      expect(Granja::Funcion.new("Mala","1","5").to_s).to eq("Las condiciones de vida de los animales son: Mala \n La calidad de los cuidados es 1 \n y el nivel de reproduccion es 5")

    end
  end
  describe Granja::Datos do
    it "Tiene una clase para almacenar los datos de la granja" do
      expect(Granja::Datos.new()).not_to eq(nil)
    end


 
  end

end
