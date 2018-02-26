require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:players) { [create(:player), create(:player)] }
  let(:team) { create(:team, players: players) }
  let(:game) { create(:game, winner: team, loser: team) }

  describe 'validations' do
    it { validate_presence_of :winner }
    it { validate_presence_of :loser }
  end

  describe 'relationships' do
    it { belong_to :winner }
    it { belong_to :loser }
  end

  describe 'callbacks' do
    it 'sets confirmed to false' do
      expect(game.confirmed?).to eq false
    end
  end

  describe 'scopes' do
    context 'recent_games' do
      it 'returns confirmed' do
        game.confirmed = true
        game.save
        expect(described_class.recent_games).to eq [game]
      end

      it 'returns unconfirmed' do
        expect(described_class.recent_games(confirmed: false)).to eq [game]
      end
    end
  end
end
