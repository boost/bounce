class Team < ApplicationRecord
  # Validations
  # validates :name,      presence: true

  # Relationships
  has_and_belongs_to_many   :players
  has_many                  :won_games,  class_name: 'Game', foreign_key: 'winner_id'
  has_many                  :lost_games, class_name: 'Game', foreign_key: 'loser_id'

  validates_presence_of :players

  def player_names
    players.map(&:nickname).join(' & ')
  end
end
