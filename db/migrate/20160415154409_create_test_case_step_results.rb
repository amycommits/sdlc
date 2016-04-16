class CreateTestCaseStepResults < ActiveRecord::Migration
  def change
    create_table :test_case_step_results do |t|
      t.references :test_case_step, index: true, foreign_key: true
      t.string :state
      t.text :details

      t.timestamps null: false
    end
  end
end
