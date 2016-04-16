class FailedCaseDisplay
	def showFailedTestSteps
		
	end

	def method_missing(method_name, *args, &block)
		test_case.send(method_name, *args, &block)
	end
	def respond_to_missing?(method_name, include_private = false)
		test_case.respond_to?(method_name, include_private) ||super
	end

end