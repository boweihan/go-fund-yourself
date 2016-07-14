class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :shares
end
