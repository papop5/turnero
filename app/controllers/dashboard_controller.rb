class DashboardController < ApplicationController
  def index
  end

	def distribucion_agencia
		@agencias = Turno.all.group_by(&:agencia)
	end
end
