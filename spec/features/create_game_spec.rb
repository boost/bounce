require 'rails_helper'

RSpec.feature 'create game', type: :feature, js: true do
  before do
    create(:player, nickname: 'benedict')
    create(:player, nickname: 'emma')
    create(:player, nickname: 'gavin')
    create(:player, nickname: 'brayden')
    sign_in
  end

  scenario 'add players to table' do
    within('#winning-players') do
      click_link 'ben'
    end

    within('#losing-players') do
      click_link 'gavin'
    end

    within('#tennis-table-winning-side') do
      expect(page).to have_link 'ben'
      expect(page).to_not have_link 'gavin'
    end

    within('#tennis-table-losing-side') do
      expect(page).to_not have_link 'ben'
      expect(page).to have_link 'gavin'
    end
  end

  scenario 'remove players from the table' do
  end
end
