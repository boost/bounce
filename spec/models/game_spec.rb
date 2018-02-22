require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:players) { [create(:player), create(:player)] }
  let(:team) { create(:team, players: players) }
  let(:game) { create(:game, winner: team, loser: team) }

  describe 'relationships' do
    it { belong_to :winner }
    it { belong_to :loser }
  end

  describe 'callbacks' do
    it 'sets confirmed to false' do
      expect(game.confirmed?).to eq false
    end
  end
end
