class AddNicknameToLunchEvent < ActiveRecord::Migration
  def change
    add_column :lunch_events, :nick_name, :string
  end
end
