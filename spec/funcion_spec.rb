RSpec.describe Granja do
  describe Granja::Funcion do

    context "Componentes del modulo Funcion" do
      it "Existe un modulo para almacenar las Granja::Funcionalidades" do
        expect(Granja::Funcion).not_to eq(nil)
      end
      it "Existe una constante para representar las condiciones de vida" do
        expect(Granja::Funcion::CONDICIONES_DE_VIDA).to eq(:campo_abierto)
        expect(Granja::Funcion::CONDICIONES_DE_VIDA1).to eq(:jaula)
      end
      it "Existe un procedimiento para establecer los cuidados de los animales" do
        expect(Granja::Funcion.method_defined?(:cuidados)).to eq(true)
      end
      it "Existe un procedimiento para establecer la reproduccion de los animales" do
        expect(Granja::Funcion.method_defined?(:reproduccion)).to eq(true)
      end
    end

    context "Herencia del modulo Granja::Funcion" do
      it "Se espera que sea un objeto de la clase Module" do
        expect(Granja::Funcion).to be_a_kind_of (Module)
      end
      it "Se espera que sea un objeto (Object)" do
        expect(Granja::Funcion).to be_a_kind_of (Object)
      end
      it "Se espera que sea un objeto basico (BasicObject)" do
        expect(Granja::Funcion.is_a? BasicObject).to eq(true)
      end
      it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
        expect(Granja::Funcion).not_to be_a_kind_of (String)
      end
      it "No se espera que sea una instancia de la clase que representa un numero (Numeric)" do
        expect(Granja::Funcion.is_a? Numeric).to eq(false) 
      end
    end
    
  end
end
