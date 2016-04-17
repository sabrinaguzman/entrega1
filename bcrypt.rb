require 'bcrypt'
class Bcrypt
	
	attr_reader :password
	include BCrypt
	def encriptar(password)	
		@password=Password.create(password)
	end

	def validar_con(usuario, password)
		usuarioValido = "Juan"

		if usuario == usuarioValido && (@password == password)
			return true
		else
			return false
		end
	end
end
