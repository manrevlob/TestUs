class Case < ApplicationRecord

  belongs_to :suite
  has_many :steps
  has_many :case_plans

end
