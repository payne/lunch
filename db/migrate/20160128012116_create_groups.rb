class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.float :attendance_rate

      t.timestamps null: false
    end
  end
end
