class Role < ApplicationRecord

  # Relaciones
  has_many :users
  has_many :manages


  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10}

end
