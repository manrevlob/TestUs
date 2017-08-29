class ExecuteCase < ApplicationRecord

  belongs_to :user
  has_many :execute_step

end
