class Atendido < Turno

	def self.promedio_espera_dia(dia = Time.now)
		result_set = registros_por_dia(dia)
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
		result_set = registros_por_dia(dia)
		sumatoria = result_set.map do |turno| # (all.map todo lo q hace lo mete en un arreglo) y despues lo suma
			turno.hora_finalizacion - turno.hora_atencion
		end.sum

		if result_set.empty?#comparacion
			0 #retorno
		else
			(sumatoria / result_set.count) / 60
		end
	end

	def self.promedio_usuarios(dia = Time.now)
		result_set = registros_por_dia(dia)
		result_set.group_by(&:usuario_atencion).map do |usuario, turnos|
			suma = turnos.map { |turno| turno.hora_finalizacion - turno.hora_atencion }.sum
			{ usuario: usuario, promedio: suma / result_set.count }
		end
	end

	def self.promedio_agencia(dia = Time.now)
		result_set = registros_por_dia(dia)
		result_set.group_by(&:agencia).map do |usuario, turnos|
			suma_atencion = turnos.map { |turno| turno.hora_finalizacion - turno.hora_atencion }.sum
			suma_espera = turnos.map { |turno| turno.hora_atencion - turno.hora_ingreso }.sum
			{ agencia: usuario, promedio_atencion: suma_atencion / result_set.count, promedio_espera: suma_espera / result_set.count}
		end
	end

	def self.registros_por_dia(dia = Time.now)
		inicio = dia.at_beginning_of_day
		final = dia.at_end_of_day
		query = "created_at >= ? and created_at <= ?"
		where(query, inicio, final)
	end
end