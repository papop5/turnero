class Usuario < ActiveRecord::Base
	enum estado: [:inactivo, :activo]

	has_secure_pasword
end
