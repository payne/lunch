class Group < ActiveRecord::Base

  has_many :group_assignments
  has_many :people, through: :group_assignments

end
