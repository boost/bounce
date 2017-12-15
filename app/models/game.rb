class Game < ApplicationRecord
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'

  accepts_nested_attributes_for :winner
  accepts_nested_attributes_for :loser

  def winner_attributes=(value)
    teams = Team.by_player_ids(value['player_ids'])

    if teams.any?
      self.winner = teams.first
    else
      players = Player.find(value['player_ids'].split(' '))
      self.winner = Team.create(players: players)
    end
  end

  def loser_attributes=(value)
    teams = Team.by_player_ids(value['player_ids'])

    if teams.any?
      self.loser = teams.first
    else
      players = Player.find(value['player_ids'].split(' '))
      self.loser = Team.create(players: players)
    end
  end
end
