class Player < ApplicationRecord
  # Validations
  validates :name,      presence: true
end
