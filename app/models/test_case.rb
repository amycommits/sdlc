class TestCase < ActiveRecord::Base
  has_many :requirements, through: :test_case_requirements
  has_many :test_case_requirements
  has_many :test_case_steps
  accepts_nested_attributes_for :test_case_steps, reject_if: proc {|attributes| attributes['description'].blank? },allow_destroy: true

scope :test_case_child_includes, -> {includes([{test_case_steps: :test_case_step_results}])}

end
