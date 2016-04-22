class TestCaseStepResultDecorator < Draper::Decorator
  delegate_all

	def overview
		if object.created_at
			("<span class='decorator_overview result_time_ago #{object.state}'>  #{h.time_ago_in_words(object.created_at)} ago </span> "+
			 "<span class='decorator_overview result_state #{object.state}'>  #{object.state} </span>" +
			 "<span class='decorator_overview result_details #{object.state}'> #{object.details} </span>").html_safe
		end
	end
end
