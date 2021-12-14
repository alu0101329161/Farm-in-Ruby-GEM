RSpec.describe Granja do
  it "Tiene un número de version, usando la sintaxis semántica 0.3.0" do
    expect(Granja::VERSION).not_to be nil
  end
end
