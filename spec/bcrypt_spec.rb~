require_relative '../bcrypt'

describe Bcrypt do

	before :each do
		@bcrypt=Bcrypt.new
	end

	describe "validar_con" do

		before :each do
			@bcrypt.encriptar("Juan123")
		end

		it "correct validation" do
			expect(@bcrypt.validar_con("Juan","Juan123")).to be true
		end
		it "incorrect password validation" do
			expect(@bcrypt.validar_con("Juan","juan123")).not_to be true
		end
		it "incorrect name validation" do
			expect(@bcrypt.validar_con("juan","Juan123")).not_to be true
		end
	end
end
