class Turno < ActiveRecord::Base
	enum estado: [:ingreso, :atendido, :finalizado]
end
