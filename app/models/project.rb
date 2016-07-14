class Project < ActiveRecord::Base
  belongs_to :user
  has_many :shares
  has_many :purchases

  accepts_nested_attributes_for :shares
end
