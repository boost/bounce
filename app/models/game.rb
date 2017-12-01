class Game < ApplicationRecord
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'
end
