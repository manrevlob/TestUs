class Role < ApplicationRecord

  # Relaciones
  has_many :users
  has_many :manages

end
