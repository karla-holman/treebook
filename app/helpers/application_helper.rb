module ApplicationHelper
	
	def flash_class(flashtype)
		case flashtype
			when "alert"
				"alert-warning"
			when "notice"
				"alert-info"
			else
				""
		end
	end

end
