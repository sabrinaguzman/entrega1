class Caesar

	attr_reader :password

	def initialize
		@alfabeto = 'abcdefghijklmnñopqrstuvwxyz0123456789ABCDEFGHIJKLMNÑOPQRSTUVWXYZ'
	end

	def encriptar(password)
  		@password=password.chars.map { |car| @alfabeto[@alfabeto.index(car) + 3 - @alfabeto.size] }.join
  	end
	
	def desencriptar(password)
		@password=password.chars.map {|car| @alfabeto[ @alfabeto.index(car) - 3] }.join
	end

	def validar_con(usuario, password)
		usuarioValido = "Juan"
		passwordValido = "Mxdp456"
		if usuario == usuarioValido && password == self.desencriptar(passwordValido)
			return true
		else
			return false
		end
	end
end
