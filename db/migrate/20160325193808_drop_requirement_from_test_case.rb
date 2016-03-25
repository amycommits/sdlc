class DropRequirementFromTestCase < ActiveRecord::Migration
  def change
	remove_column :test_cases, :requirement_id
  end
end
