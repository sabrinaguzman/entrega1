require_relative '../caesar'

describe Caesar do

	before :each do
		@caesar=Caesar.new
	end

	describe "encriptar" do
		it "has a value KRÑD456fkdx after the encryption" do
			expect(@caesar.encriptar("HOLA123chau")).to eq("KRÑD456fkdx")
		end
		it "not has a value 4567 after the encryption" do
			expect(@caesar.encriptar("1233")).not_to eq("4567")
		end
	end
	describe "desencriptar" do
		it "not has a value 1234 after the decryption" do
			expect(@caesar.desencriptar("4566")).not_to eq("1234")
		end
		it "has a value PX8oVyz0 after the decryption" do
			expect(@caesar.desencriptar("SaBrY123")).to eq("PX8oVyz0")
		end
	end
	describe "validar_con" do
		it "correct validation" do
			expect(@caesar.validar_con("Juan","Juan123")).to be true
		end
		it "incorrect password validation" do
			expect(@caesar.validar_con("Juan","juan123")).to be false
		end
		it "incorrect name validation" do
			expect(@caesar.validar_con("juan","Juan123")). to be false
		end
	end
end
