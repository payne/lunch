class CreateLunchAssignments < ActiveRecord::Migration
  def change
    create_table :lunch_assignments do |t|
      t.integer :lunch_event_id
      t.integer :person_id
    end
    add_index :lunch_assignments, :lunch_event_id
    add_index :lunch_assignments, :person_id
  end
end