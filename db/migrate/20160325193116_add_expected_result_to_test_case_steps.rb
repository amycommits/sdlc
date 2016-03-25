class AddExpectedResultToTestCaseSteps < ActiveRecord::Migration
  def change
    add_column :test_case_steps, :expected_result, :text
  end
end
