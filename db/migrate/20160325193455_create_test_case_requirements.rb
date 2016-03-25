class CreateTestCaseRequirements < ActiveRecord::Migration
  def change
    create_table :test_case_requirements do |t|
      t.references :test_case, index: true, foreign_key: true
      t.references :requirement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
