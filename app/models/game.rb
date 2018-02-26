class Game < ApplicationRecord
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'

  accepts_nested_attributes_for :winner
  accepts_nested_attributes_for :loser

  validates_presence_of :winner
  validates_presence_of :loser

  after_initialize do
    self.confirmed = false unless persisted?
  end

  scope :recent_games, ->(confirmed: true) { where(confirmed: confirmed).limit(10).order(created_at: :desc) }

  def winner_attributes=(value)
    teams = lookup_team(value[:player_ids].split(' '))

    if teams.any?
      self.winner = teams.first
    else
      players = Player.find(value[:player_ids].split(' '))
      self.winner = Team.create(players: players)
    end
  end

  def loser_attributes=(value)
    teams = lookup_team(value[:player_ids].split(' '))

    if teams.any?
      self.loser = teams.first
    else
      players = Player.find(value[:player_ids].split(' '))
      self.loser = Team.create(players: players)
    end
  end

  private

  def lookup_team(player_ids)
    player_ids = player_ids.map(&:to_i).sort
    
    Team.all.select { |team| team.players.map(&:id).sort == player_ids }
  end
end
