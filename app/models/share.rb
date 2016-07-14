class Share < ActiveRecord::Base
  belongs_to :project
  has_many :purchases
end
