class CreateTestCaseSteps < ActiveRecord::Migration
  def change
    create_table :test_case_steps do |t|
      t.references :test_case, index: true, foreign_key: true
      t.text :description
      t.integer :position

      t.timestamps null: false
    end
  end
end
