class CreateGroupAssignments < ActiveRecord::Migration
  def change
    create_table :group_assignments do |t|
      t.integer :group_id
      t.integer :person_id
    end
    add_index :group_assignments, :group_id
    add_index :group_assignments, :person_id
  end
end