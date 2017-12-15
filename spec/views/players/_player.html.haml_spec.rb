require 'rails_helper'

RSpec.describe 'players/_player.html.haml', type: :view do
  before do
    @player = create(:player)
    render partial: 'players/player.html.haml', collection: Player.all, locals: { winner: true }
  end

  it 'displays player name' do
    expect(rendered).to have_link @player.name
  end
end
