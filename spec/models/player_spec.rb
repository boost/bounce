require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'validations' do
    it { should validate_presence_of :uid }
    it { should validate_presence_of :provider }
    it { should validate_presence_of :nickname }
    it { should validate_presence_of :image_url }
  end

  context 'relationships' do
    it { have_and_belong_to_many(:teams) }
  end

  describe '.from_omniauth' do
    let(:auth_hash) do
      OmniAuth::AuthHash.new(
        provider: 'slack',
        uid: '12345',
        info: {
          nickname: 'ben',
          first_name: 'Ben',
          last_name: 'Boost',
          image: 'http://image.jpg'
        }
      )
    end

    let(:player) { create(:player, :unique) }

    context 'complete auth_hash' do
      it 'finds player by uid and provider' do
        expect(Player).to receive(:find_or_initialize_by).with(uid: '12345',
                                                             provider: 'slack')
                                                       .and_return(player)
        Player.from_omniauth(auth_hash)
      end

      it 'sets the nickname' do
        expect(player.nickname).to eq 'ben'
      end

      it 'sets the player image_url' do
        expect(player.image_url).to eq 'http://image.jpg'
      end

      it 'sets the first name' do
        expect(player.first_name).to eq 'Ben'
      end

      it 'sets the last name' do
        expect(player.last_name).to eq 'Boost'
      end
    end

    context 'incomplete auth_hash' do
      it 'returns empty player' do
        expect(Player.from_omniauth({})).to be_a_new(Player)
      end
    end
  end
end
