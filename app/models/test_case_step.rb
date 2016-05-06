class TestCaseStep < ActiveRecord::Base
  belongs_to :test_case
  has_many :test_case_step_results,dependent: :destroy
end
