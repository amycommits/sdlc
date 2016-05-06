class Requirement < ActiveRecord::Base
	 has_many :test_cases, through: :test_case_requirements
  	has_many :test_case_requirements
end
