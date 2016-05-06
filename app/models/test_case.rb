class TestCase < ActiveRecord::Base
  has_many :requirements, through: :test_case_requirements
  has_many :test_case_requirements,dependent: :destroy
  has_many :test_case_steps,dependent: :destroy
  accepts_nested_attributes_for :test_case_steps,allow_destroy: true, reject_if: proc {|attributes| attributes['description'].blank? }

scope :test_case_child_includes, -> {includes([{test_case_steps: :test_case_step_results}])}

end
