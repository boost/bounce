class Player < ApplicationRecord
  # Validations
  validates :name,      presence: true

  # Relationships
  has_and_belongs_to_many :teams
end
