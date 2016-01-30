module ApplicationHelper

	def type_to_bootstrap(type)
		case type
		when 'alert' then 'danger'
		when 'notice' then 'info'
		else
			type 
		end
	end


	def alert_tag(type, message)
		content_tag :div, class: "alert alert-#{type_to_bootstrap(type)}" do
		message
		end
	end
end
