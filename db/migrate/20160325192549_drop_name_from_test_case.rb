class DropNameFromTestCase < ActiveRecord::Migration
  def change
	remove_column :test_cases, :name
	add_column :test_cases, :status, :string  
  end
end
