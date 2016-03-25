module TestCasesHelper
	def current_requirements
     	@requirements ||= Requirement.all
    end
end
