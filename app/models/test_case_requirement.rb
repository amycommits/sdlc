class TestCaseRequirement < ActiveRecord::Base
  belongs_to :test_case
  belongs_to :requirement
end
