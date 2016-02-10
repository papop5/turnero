class Turno < ActiveRecord::Base

	include Export

	enum estado: [:ingreso, :atendido, :finalizado]

	belongs_to :usuario_ingreso, class_name: 'Usuario'  
	belongs_to :usuario_atencion, class_name: 'Usuario'
	belongs_to :agencia

end
