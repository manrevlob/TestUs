class Case < ApplicationRecord

  belongs_to :suite
  has_many :steps

end
