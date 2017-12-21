require 'rails_helper'

RSpec.feature 'create game', type: :feature, js: true do
  before do
    create(:player, name: 'Player 1')
    create(:player, name: 'Player 2')
    create(:player, name: 'Player 3')
    create(:player, name: 'Player 4')
    visit root_path
  end

  scenario 'add players to table' do
    within('#winning-players') do
      click_link 'Player 1'
    end

    within('#losing-players') do
      click_link 'Player 3'
    end

    within('#tennis-table-winning-side') do
      expect(page).to have_content 'Player 1'
      expect(page).to_not have_content 'Player 3'
    end

    within('#tennis-table-losing-side') do
      expect(page).to_not have_content 'Player 1'
      expect(page).to have_content 'Player 3'
    end
  end
end
