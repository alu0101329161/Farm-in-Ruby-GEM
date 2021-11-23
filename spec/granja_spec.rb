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
    it "Tiene un atributo para la identificacion de la granja" do
      expect(Granja::Datos.new("Farmer").identificacion).to eq("Farmer")
      expect(Granja::Datos.new("FarmerA").identificacion).to eq("FarmerA")
      expect(Granja::Datos.new("FarmerB").identificacion).to eq("FarmerB")
      expect(Granja::Datos.new("FarmerC").identificacion).to eq("FarmerC")

    end
    it "Tiene un atributo para el nombre de la granja" do
      expect(Granja::Datos.new("","Farmer").nombre).to eq("Farmer")
      expect(Granja::Datos.new("","FarmerA").nombre).to eq("FarmerA")
      expect(Granja::Datos.new("","FarmerB").nombre).to eq("FarmerB")
      expect(Granja::Datos.new("","FarmerC").nombre).to eq("FarmerC")

    end
    it "Tiene un atributo para el tipo de granja" do
      expect(Granja::Datos.new("","","Farmer").tipo).to eq("Farmer")
      expect(Granja::Datos.new("","","FarmerA").tipo).to eq("FarmerA")
      expect(Granja::Datos.new("","","FarmerB").tipo).to eq("FarmerB")
      expect(Granja::Datos.new("","","FarmerC").tipo).to eq("FarmerC")

    end
    it "Tiene un atributo para la descripcion de granja" do
      expect(Granja::Datos.new("","","","Farmer").descripcion).to eq("Farmer")
      expect(Granja::Datos.new("","","","FarmerA").descripcion).to eq("FarmerA")
      expect(Granja::Datos.new("","","","FarmerB").descripcion).to eq("FarmerB")
      expect(Granja::Datos.new("","","","FarmerC").descripcion).to eq("FarmerC")

    end
    it "Tiene un atributo para poder impirmir" do
      expect(Granja::Datos.new("1111","FARMERA","agricola","muy cara").to_s).to eq("la identificacion de la granja es: 1111 \n el nombre es: FARMERA \n , el tipo es: agricola \n y la descripcion es: muy cara")
      expect(Granja::Datos.new("1001","FARMERB","regadio","muy barata").to_s).to eq("la identificacion de la granja es: 1001 \n el nombre es: FARMERB \n , el tipo es: regadio \n y la descripcion es: muy barata")
      expect(Granja::Datos.new("1101","FARMERC","platano","fea").to_s).to eq("la identificacion de la granja es: 1101 \n el nombre es: FARMERC \n , el tipo es: platanera \n y la descripcion es: fea")
      expect(Granja::Datos.new("0000","FARMERD","agricola","cara").to_s).to eq("la identificacion de la granja es: 0000 \n el nombre es: FARMERD \n , el tipo es: agricola \n y la descripcion es cara")

    end 
  end

end
