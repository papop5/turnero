class DashboardController < ApplicationController
  def index
  end

	def distribucion_agencia
		@agencias = Turno.all.group_by(&:agencia)
	end

	def distribucion_estado
		@estados = Turno.all.group_by(&:type) # que lo muestre y agrupae por tipo
	end

	def promedio_espera
		@promedios = (3.weeks.ago.to_date..Date.today).map do |day|
			[day, Atendido.promedio_espera_dia(day)]
		end
	end

	def promedio_atencion
		@promedios = (3.weeks.ago.to_date..Date.today).map do |day|
			[day, Atendido.promedio_atencion_dia(day)]
		end
	end
end
