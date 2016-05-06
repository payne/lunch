class LunchEvent < ActiveRecord::Base

  has_many :lunch_assignments
  has_many :person, through: :lunch_assignments


  def to_s
    nick_name
  end
end
