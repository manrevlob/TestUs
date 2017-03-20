class Project < ApplicationRecord

  # Relaciones
  has_and_belongs_to_many :users

end
