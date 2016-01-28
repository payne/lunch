class Person < ActiveRecord::Base
  has_many :lunch_assignments
  has_many :lunch_event, through: :lunch_assignments
end
