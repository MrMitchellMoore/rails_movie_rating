module ApplicationHelper
	def alert_class(flash_type)
    # custom flash messages
    case flash_type.to_sym
    when :notice
      "alert-success"
    when :alert
      "alert-warning"
    when :error
      "alert-danger"
    end
  end
end
