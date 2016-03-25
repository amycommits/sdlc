class TestCase < ActiveRecord::Base
  has_many :requirements, through: :test_case_requirements
  has_many :test_case_requirements
  has_many :test_case_steps
  accepts_nested_attributes_for :test_case_steps
end
