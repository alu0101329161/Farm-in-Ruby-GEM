RSpec.describe Granja do
  describe Funcion do
    before :each do
      @test1 = Funcion.new("Saludable","Buena","1")
      @test2 = Funcion.new("Muy Saludable","Buena","5")
      @test3 = Funcion.new("Poco Saludable","Regular","8")
      @test4 = Funcion.new("Mala","Mala","10")
    end

    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Funcion.new()).not_to eq(nil)
    end
    it "Tiene un atributo para las condiciones de vida de los animales" do
      expect(@test1.condicion_de_vida).to eq("Saludable")
      expect(@test2.condicion_de_vida).to eq("Muy Saludable")
      expect(@test3.condicion_de_vida).to eq("Poco Saludable")
      expect(@test4.condicion_de_vida).to eq("Mala")

    end
    it "Tiene un atributo para los cuidados de los animanles" do
      expect(@test1.cuidado).to eq("Buena")
      expect(@test2.cuidado).to eq("Buena")
      expect(@test3.cuidado).to eq("Regular")
      expect(@test4.cuidado).to eq("Mala")

    end
    it "Tiene un atributo para la reproduccion de los animales" do
      expect(@test1.reproduccion).to eq("1")
      expect(@test2.reproduccion).to eq("5")
      expect(@test3.reproduccion).to eq("8")
      expect(@test4.reproduccion).to eq("10")

    end
    it "Tiene un metodo para poder imprimir" do
      expect(@test1.to_s).to eq("Las condiciones de vida de los animales son: Saludable \n La calidad de los cuidados es Buena \n y el nivel de reproduccion es 1")
      expect(@test2.to_s).to eq("Las condiciones de vida de los animales son: Muy Saludable \n La calidad de los cuidados es Buena \n y el nivel de reproduccion es 5")
      expect(@test3.to_s).to eq("Las condiciones de vida de los animales son: Poco Saludable \n La calidad de los cuidados es Regular \n y el nivel de reproduccion es 8")
      expect(@test4.to_s).to eq("Las condiciones de vida de los animales son: Mala \n La calidad de los cuidados es Mala \n y el nivel de reproduccion es 10")

    end
  end
end
