class Project < ApplicationRecord

  has_many :assign
  has_many :builds

end