class Plan < ApplicationRecord

  belongs_to :build
  has_many :case_plans

end
