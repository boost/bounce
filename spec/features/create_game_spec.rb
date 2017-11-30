require 'rails_helper'

RSpec.feature 'create game', type: :feature do
  before do
    create(:player, name: 'Player 1')
    create(:player, name: 'Player 2')
    create(:player, name: 'Player 3')
    create(:player, name: 'Player 4')
    visit root_path
  end

  # scenario 'add players to table' do
  #   within('#team-a-players') do
  #     click_link 'Player 1'
  #   end

  #   within('#team-b-players') do
  #     click_link 'Player 3'
  #   end

  #   within('#tennis-table-side-a') do
  #     expect(page).to have_content 'Player 1'
  #     expect(page).to_not have_content 'Player 3'
  #   end

  #   within('#tennis-table-side-b') do
  #     expect(page).to_not have_content 'Player 1'
  #     expect(page).to have_content 'Player 3'
  #   end
  # end

  # scenario 'list all players' do
  #   within('.players') do
  #     expect(page).to have_content 'Player 1'
  #     expect(page).to have_content 'Player 2'
  #     expect(page).to have_content 'Player 3'
  #     expect(page).to have_content 'Player 4'
  #   end
  # end
end
