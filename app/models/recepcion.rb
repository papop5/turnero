class Recepcion < Turno #hereda de turno

	before_save :set_time #antes de guardar vaya al metodo set_time

	validates :nombres, presence: true
	validates :asunto, presence: true, length: {maximum: 50, minimum: 10}

	def set_time
		self.hora_ingreso = Time.now #self esta llamando el metodo hora_ingreso para grabarlo en el campo hora_ingreso
	end

	def to_atencion
		atencion = self.becomes!(Atencion) #convierte de atencion a recepcion 
		atencion.save!								
	end
end
