class Atendido < Turno

	def self.promedio_espera_dia(dia = Time.now)
		inicio = dia.at_beginning_of_day
		final = dia.at_end_of_day
		query = "created_at >= ? and created_at <= ?"
		result_set = where(query, inicio, final)
		sumatoria = result_set.map do |turno| # (all.map todo lo q hace lo mete en un arreglo) y despues lo suma
			turno.hora_atencion - turno.hora_ingreso
		end.sum

		if result_set.empty? #comparacion
			0 #retorno
		else
			(sumatoria / result_set.count) / 60
		end
	end


	def self.promedio_atencion_dia(dia = Time.now)
		inicio = dia.at_beginning_of_day
		final = dia.at_end_of_day
		query = "created_at >= ? and created_at <= ?"
		result_set = where(query, inicio, final)
		sumatoria = result_set.map do |turno| # (all.map todo lo q hace lo mete en un arreglo) y despues lo suma
			turno.hora_finalizacion - turno.hora_atencion
		end.sum

		if result_set.empty?#comparacion
			0 #retorno
		else
			(sumatoria / result_set.count) / 60
		end
	end
end