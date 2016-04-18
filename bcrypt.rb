require 'bcrypt'
class Bcrypt
	
	include BCrypt
	def encriptar(password)
	end

	def validar_con(usuario, password)
		usuarioValido = "Juan"
		passwordValido=Password.create("Juan123")
		if usuario == usuarioValido && (passwordValido == password)
			return true
		else
			return false
		end
	end
end
