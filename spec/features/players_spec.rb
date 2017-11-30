require 'rails_helper'

RSpec.feature 'players', type: :feature do
  before do
    create(:player, name: 'Player 1')
    create(:player, name: 'Player 2')
    create(:player, name: 'Player 3')
    create(:player, name: 'Player 4')
    visit root_path
  end

  scenario 'list all players' do
    within('.players') do
      expect(page).to have_content 'Player 1'
      expect(page).to have_content 'Player 2'
      expect(page).to have_content 'Player 3'
      expect(page).to have_content 'Player 4'
    end
  end
end
