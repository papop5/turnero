class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #esto lo inserto al momento de ejecutar el comando rails g devise usuario
         :recoverable, :rememberable, :trackable, :validatable
	enum estado: [:inactivo, :activo] #agregamos
	enum roles: [:admin, :operativo, :gerente] #agregamos

	#has_secure_password     #para encriptar el pasword

	belongs_to :agencia 
	
end
