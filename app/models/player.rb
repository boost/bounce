class Player < ApplicationRecord
  # Validations
  validates :name,      presence: true

  # Relationships
  has_and_belongs_to_many :teams

  def first_name
    name.split(' ').first
  end
end
