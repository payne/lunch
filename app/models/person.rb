class Person < ActiveRecord::Base
  has_many :lunch_assignments
  has_many :lunch_event, through: :lunch_assignments

  has_many :group_assignments
  has_many :groups, through: :group_assignments
end
