class Controlador

	def texto_plano
		@password=Texto_plano.new
	end
	def caesar(password)
		@password=Caesar.new
	end
	def bcrypt(password)
		@password=Bcrypt.new
	end
	def validar_con(usuario, password)
		@password.encriptar(password)
		@password.validar_con(usuario, password)
	end
end
