class LunchAssignment < ActiveRecord::Base
  belongs_to :person
  belongs_to :lunch_event
end
