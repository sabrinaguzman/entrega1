Descripción de entréga1 - Menú de login

Como dato general los modelos contienen un único usuario que lleva como nombre "Juan" y password "Juan123".

El archivo "cmd.rb" es la parte de la vista de login. Aquí contiene todo lo que "sale" y "entra" por consola. 
El archivo "controlador.rb" es quien se encargara de enviar los datos que ingresan por consola a las clases para hacer la validación de los mismos datos ingresados.
El archivo "texto_plano.rb" contiene el mensaje "validar_con" y recibe como parámetro el nombre de usuario y el password. Devuelve "true" en el caso de que tanto el nombre de usuario y password sean correctos al que se encuentra establecido. En el caso de que el nombre o password no sea el correcto devuelve "false". También, contiene el mensaje "encriptar" que recibe como parámetro un password. Este mensaje fue implementado para lograr el polimorfismo en todas las clases. En ésta clase, éste mensaje es nulo, ya que no se debe implementar nada en ella.
El archivo "caesar.rb" éste contiene un mensaje "encriptar" que recibe un parámetro "password", éste será encriptado para compararlo con el preestablecido que se encuentra ya encriptado. El mensaje "desencriptar" es utilizado en el método "validar_con" para comparar entre el password preestablecido y el que ingresa por parámetro. El método "validar_con" hace la comprobación de el usuario y password.
El archivo "bcrypt.rb" contiene el mensaje "validar_con" recibe los parámetros password y
usuario para hacer la comparación con el usuario y password establecido. El mensaje "encriptar" es nulo en esta clase.
