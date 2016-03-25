class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.string :page
      t.string :status

      t.timestamps null: false
    end
  end
end
