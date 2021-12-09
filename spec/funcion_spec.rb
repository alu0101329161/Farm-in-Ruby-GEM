RSpec.describe Granja do
  describe Funcion do

    context "Componentes del modulo Funcion" do
      it "Existe un modulo para almacenar las funcionalidades" do
        expect(Funcion).not_to eq(nil)
      end
      it "Existe una constante para representar las condiciones de vida" do
        expect(Funcion::CONDICIONES_DE_VIDA).to eq("campo abierto")
        expect(Funcion::CONDICIONES_DE_VIDA1).to eq("establo")
      end
      it "Existe un procedimiento para establecer los cuidados de los animales" do
        expect(Funcion.cuidados(1)).to eq("Cuidados tipo A")
        expect(Funcion.cuidados(2)).to eq("Cuidados tipo B")
      end
      it "Existe un procedimiento para establecer la reproduccion de los animales" do
        expect(Funcion.reproduccion(1)).to eq("Reproduccion tipo A")
        expect(Funcion.reproduccion(2)).to eq("Reproduccion tipo B")
      end
    end

    context "Herencia del modulo Funcion" do
      it "Se espera que sea un objeto de la clase Module" do
        expect(Funcion).to be_a_kind_of (Module)
      end
      it "Se espera que sea un objeto (Object)" do
        expect(Funcion).to be_a_kind_of (Object)
      end
      it "Se espera que sea un objeto basico (BasicObject)" do
        expect(Funcion.is_a? BasicObject).to eq(true)
      end
      it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
        expect(Funcion).not_to be_a_kind_of (String)
      end
      it "No se espera que sea una instancia de la clase que representa un numero (Numeric)" do
        expect(Funcion.is_a? Numeric).to eq(false) 
      end
    end
    
  end
end
