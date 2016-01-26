class Usuario < ActiveRecord::Base
	enum estado: [:inactivo, :activo] #agregamos
	enum roles: [:admin, :operativo, :gerente] #agregamos

	has_secure_password #para encriptar el pasword

	belongs_to :agencia 
	
end
