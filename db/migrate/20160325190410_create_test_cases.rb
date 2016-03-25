class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.string :name
      t.references :requirement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
