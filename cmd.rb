require 'highline/import'
require_relative 'texto_plano'
require_relative 'caesar'
require_relative 'bcrypt'
require_relative 'controlador.rb'

@salir = false
@controlador = Controlador.new

while !@salir do

	choose do |menu|
		menu.prompt=("1.Texto plano"
		     	     "2.Caesar"
		             "3.Bcrypt"
		             "4.Salir"
		             "Elija opcion de password: ")
		
		menu.choice(:Texto_plano){
			@controlador.texto_plano			
			imprimir_menu_con(@controlador)
		}
		menu.choice(:Caesar){
			@controlador.caesar("")			
			imprimir_menu_con(@controlador)
		}
		menu.choice(:Bcrypt){
			@controlador.bcrypt("")
			imprimir_menu_con(@controlador)
		}
		menu.choice(:Salir){
			@salir = true
		}
	
		def imprimir_menu_con(unControlador)
			estado = "deslogueado"
			while !@salir do		
				choose do |menu|
		
					if estado == "deslogueado"
						menu.prompt=("1. Login"
						     	     "2. Estado"
						             "3. Salir"
						             "Elija una opcion: ")
						menu.choice(:Login) {
							usuario = ask ("Nombre de usuario: ")
							password = ask ("Password: " )
							if (password == "")or(usuario == "")
								say "Ingrese nuevamente sus datos"
							else
								validacion=unControlador.validar_con(usuario, password)
								if(validacion==true)
									say "¡Usted se ha logueado exitosamente!"
									estado = "logueado como #{usuario}"
								else
									say "Ingrese nuevamente sus datos"
								end
							end
						}
						menu.choice(:Estado) {
							say("Usted no se encuentra logueado")
						}
						menu.choice(:Salir) {
							say("Adios, vuelva pronto!")
							@salir = true
						}
					else	
						menu.prompt=("1. Logout"
						     	     "2. Estado"
						             "3. Salir"
						             "Elija una opcion: ")
					
						menu.choice(:Logout) {
							usuario = "nil"				
							estado = "deslogueado"				
							say("Logout..")			
						}
						menu.choice(:Estado) {
							say("Tu estado es #{estado}")
						}
						menu.choice(:Salir) {
							say("Adios, vuelva pronto!")			
							@salir = true
						}
					end
				end	
			end
		end
	end
end
