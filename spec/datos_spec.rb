RSpec.describe Granja do
  describe Datos do
    before :each do
      @test1 = Datos.new("1111","FARMER_A","agricola","muy cara")
      @test2 = Datos.new("2222","FARMER_B","regadio","cara")
      @test3 = Datos.new("3333","FARMER_C","abono","barata")
      @test4 = Datos.new("4444","FARMER_D","terrenal","muy barata")

    end
    it "Tiene una clase para almacenar los datos de la granja" do
      expect(Datos.new()).not_to eq(nil)
    end
    it "Tiene un atributo para la identificacion de la granja" do
      expect(@test1.identificacion).to eq("1111")
      expect(@test2.identificacion).to eq("2222")
      expect(@test3.identificacion).to eq("3333")
      expect(@test4.identificacion).to eq("4444")

    end
    it "Tiene un atributo para el nombre de la granja" do
      expect(@test1.nombre).to eq("FARMER_A")
      expect(@test2.nombre).to eq("FARMER_B")
      expect(@test3.nombre).to eq("FARMER_C")
      expect(@test4.nombre).to eq("FARMER_D")

    end
    it "Tiene un atributo para el tipo de granja" do
      expect(@test1.tipo).to eq("agricola")
      expect(@test2.tipo).to eq("regadio")
      expect(@test3.tipo).to eq("abono")
      expect(@test4.tipo).to eq("terrenal")

    end
    it "Tiene un atributo para la descripcion de granja" do
      expect(@test1.descripcion).to eq("muy cara")
      expect(@test2.descripcion).to eq("cara")
      expect(@test3.descripcion).to eq("barata")
      expect(@test4.descripcion).to eq("muy barata")

    end
    it "Tiene un atributo para poder impirmir" do
      expect(@test1.to_s).to eq("la identificacion de la granja es: 1111 \n el nombre es: FARMER_A \n , el tipo es: agricola \n y la descripcion es: muy cara")
      expect(@test2.to_s).to eq("la identificacion de la granja es: 2222 \n el nombre es: FARMER_B \n , el tipo es: regadio \n y la descripcion es: cara")
      expect(@test3.to_s).to eq("la identificacion de la granja es: 3333 \n el nombre es: FARMER_C \n , el tipo es: abono \n y la descripcion es: barata")
      expect(@test4.to_s).to eq("la identificacion de la granja es: 4444 \n el nombre es: FARMER_D \n , el tipo es: terrenal \n y la descripcion es: muy barata")

    end
  end
end
