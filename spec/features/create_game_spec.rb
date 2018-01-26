require 'rails_helper'

RSpec.feature 'create game', type: :feature, js: true do
  before do
    create(:player, name: 'Benedict')
    create(:player, name: 'Emma')
    create(:player, name: 'Gavin')
    create(:player, name: 'Brayden')
    visit root_path
  end

  scenario 'add players to table' do
    within('#winning-players') do
      click_link 'Benedict'
    end

    within('#losing-players') do
      click_link 'Gavin'
    end

    within('#tennis-table-winning-side') do
      expect(page).to have_link 'Benedict'
      expect(page).to_not have_link 'Gavin'
    end

    within('#tennis-table-losing-side') do
      expect(page).to_not have_link 'Benedict'
      expect(page).to have_link 'Gavin'
    end
  end

  scenario 'remove players from the table' do

  end
end
