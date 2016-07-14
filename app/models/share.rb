class Share < ActiveRecord::Base
  belongs_to :project
  belongs_to :purchase
end
