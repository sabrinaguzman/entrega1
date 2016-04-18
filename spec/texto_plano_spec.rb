require_relative '../texto_plano'

describe Texto_plano do

	before :each do
		@texto=Texto_plano.new
	end

	it "validacion correcta" do
		expect(@texto.validar_con("Juan","Juan123")).to be(true)
	end
	it "validacion incorrecta de password" do
		expect(@texto.validar_con("Juan","juan123")).to be(false)
	end
	it "validacion incorrecta de nombre" do
		expect(@texto.validar_con("juan","Juan123")).to be(false)
	end
end
