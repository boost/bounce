class Player < ApplicationRecord
  # Validations
  validates_presence_of :uid
  validates_presence_of :provider
  validates_presence_of :nickname
  validates_presence_of :image_url

  # Relationships
  # TODO: Determine the dependent: :destroy
  has_and_belongs_to_many :teams

  def game_count
    (won_games + lost_games).count
  end

  def won_games
    Rails.cache.fetch("player_#{id}_won_games", expires_in: 3.hours) do
      teams.map(&:won_games).flatten
    end
  end

  def lost_games
    Rails.cache.fetch("player_#{id}_lost_games", expires_in: 3.hours) do
      teams.map(&:lost_games).flatten
    end
  end

  # TODO: Move this to commands
  # Creates User from omniauth hash
  #
  # @param [Hash] auth_hash
  #
  # @return [User]
  #
  def self.from_omniauth(auth_hash)
    if auth_hash && auth_hash['uid'] && auth_hash['provider']
      player = find_or_initialize_by(uid: auth_hash['uid'],
                                   provider: auth_hash['provider'])
      player.nickname = auth_hash['info']['nickname']
      player.first_name = auth_hash['info']['first_name']
      player.last_name = auth_hash['info']['last_name']
      player.image_url = auth_hash['info']['image'] || "https://api.adorable.io/avatars/285/#{player.nickname}.png"
      player
    else
      Player.new
    end
  end
end
