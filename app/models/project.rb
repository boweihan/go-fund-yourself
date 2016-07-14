class Project < ActiveRecord::Base
  belongs_to :user
  has_many :shares
  has_many :purchases

  accepts_nested_attributes_for :shares

  def calculate_shares(status)
    shares_sold= Purchase.where(project_id: self.id).sum(:number_of_shares)
    if status == 'sold'
      return shares_sold
    elsif status == 'left'
      return self.max_shares - shares_sold
    end
  end

  def days_left
    binding.pry
    # self.deadline
  end

end
