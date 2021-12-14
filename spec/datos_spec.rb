RSpec.describe Granja do
  describe Granja::Datos do

    before :each do
      @test1 = Granja::Datos.new("1111","FARMER_A",:avicola,"muy cara")
      @test2 = Granja::Datos.new("2222","FARMER_B",:avicola,"cara")
      @test3 = Granja::Datos.new("3333","FARMER_C",:ganadera,"barata")
      @test4 = Granja::Datos.new("4444","FARMER_D",:ganadera,"muy barata")
    end

    context "Atributos de la clase Datos" do
      it "Tiene una clase para almacenar los datos de la granja" do
        expect(Granja::Datos.new()).not_to eq(nil)
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
        expect(@test1.tipo).to eq(:avicola)
        expect(@test2.tipo).to eq(:avicola)
        expect(@test3.tipo).to eq(:ganadera)
        expect(@test4.tipo).to eq(:ganadera)
  
      end
      it "Tiene un atributo para la descripcion de granja" do
        expect(@test1.descripcion).to eq("muy cara")
        expect(@test2.descripcion).to eq("cara")
        expect(@test3.descripcion).to eq("barata")
        expect(@test4.descripcion).to eq("muy barata")
  
      end
      it "Tiene un atributo para poder impirmir" do
        expect(@test1.to_s).to eq("la identificacion de la granja es: 1111, el nombre es: FARMER_A, el tipo es: avicola y la descripcion es: muy cara")
        expect(@test2.to_s).to eq("la identificacion de la granja es: 2222, el nombre es: FARMER_B, el tipo es: avicola y la descripcion es: cara")
        expect(@test3.to_s).to eq("la identificacion de la granja es: 3333, el nombre es: FARMER_C, el tipo es: ganadera y la descripcion es: barata")
        expect(@test4.to_s).to eq("la identificacion de la granja es: 4444, el nombre es: FARMER_D, el tipo es: ganadera y la descripcion es: muy barata")
      end
    end

    context "Herencia de la clase Datos" do
      it "Se espera que una instancia de la clase Datos sea un Datos" do
        expect(@test1).to be_a_kind_of(Granja::Datos)
        expect(@test2).to be_a_kind_of(Granja::Datos)
        expect(@test3.is_a? Granja::Datos).to eq(true)
        expect(@test4.is_a? Granja::Datos).to eq(true)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto" do
        expect(@test1).to be_a_kind_of(Object)
        expect(@test2).to be_a_kind_of(Object)
        expect(@test3.is_a? Object).to eq(true)
        expect(@test4.is_a? Object).to eq(true)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto basico " do
        expect(@test1.is_a? BasicObject).to eq(true)
        expect(@test2.is_a? BasicObject).to eq(true)
        expect(@test3.is_a? BasicObject).to eq(true)
        expect(@test4.is_a? BasicObject).to eq(true)
      end
      it "No se espera que una instancia de la clase Datos sea una cadena" do
        expect(@test1.is_a? String).to eq(false)
        expect(@test2.is_a? String).to eq(false)
        expect(@test3.is_a? String).to eq(false)
        expect(@test3.is_a? String).to eq(false)
      end
      it "No se espera que una instancia de la clase Datos sea un numero" do
        expect(@test1).not_to be_a_kind_of (Numeric)
        expect(@test2).not_to be_a_kind_of (Numeric)
        expect(@test3.is_a? Numeric).to eq(false)
        expect(@test4.is_a? Numeric).to eq(false)
      end
    end
    
  end
end
