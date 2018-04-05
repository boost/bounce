require 'rails_helper'

RSpec.feature 'get entries', type: :feature, js: true do
  scenario 'list comments' do
    media = [
      'https://www.instagram.com/p/Bf_oxfLAMFt/?taken-by=chewchewtrain.co.nz',
      'https://www.instagram.com/p/Bf_qJ9Clgfk/?taken-by=scandibeartoys',
      'https://www.instagram.com/p/BfzfMNCFcu1/?taken-by=inkandsilk',
      'https://www.instagram.com/p/Bf_pRmzFPqZ/?taken-by=inkandsilk',
      'https://www.instagram.com/p/Bf_q41EhQP8/?taken-by=jettblackdesign',
      'https://www.instagram.com/p/Bf_rU5pnyG5/?taken-by=childrenofthetreesnz',
      'https://www.instagram.com/p/BgAks1EF4tB/?taken-by=archerandconz',
      'https://www.instagram.com/p/Bf_p4sqFWI7/?taken-by=eviemayaccessories',
      'https://www.instagram.com/p/Bf_piZ4lVaw/?taken-by=hallobrody',
      'https://www.instagram.com/p/Bf_Zq1rHz46/?taken-by=woolmothermaternity',
      'https://www.instagram.com/p/Bf_p7lTHn6S/?taken-by=lalamianz',
      'https://www.instagram.com/p/Bf_q21eg9g2/?taken-by=bootique_clothing',
      'https://www.instagram.com/p/BgX8V4Kn5BH/?taken-by=bootique_clothing'
    ]

    entries = []

    media.each do |media_url|
      participating_page = media_url.split('=').last
      visit(media_url)

      (1..20).each do |count|
        find('a._m3m1c').click rescue break
        sleep 1
      end
      
      media_entries = []

      within('ul._b0tqa') do
        all('a._2g7d5').each do |link|
          media_entries << "#{link[:title]} from #{participating_page} page"
        end
      end

      media_entries.shift
      entries += media_entries
    end


    File.open('entries.txt', 'w+') do |f|
      entries.each { |element| f.puts(element) }
    end

    # p "--------------------------------------------------"
    # p "entries.count:", entries.count
    # p "WINNER!", entries.sample
    # p "--------------------------------------------------"

    # within('#winning-players') do
    #   click_link 'ben'
    # end

    # within('#losing-players') do
    #   click_link 'gavin'
    # end

    # within('#tennis-table-winning-side') do
    #   expect(page).to have_link 'ben'
    #   expect(page).to_not have_link 'gavin'
    # end

    # within('#tennis-table-losing-side') do
    #   expect(page).to_not have_link 'ben'
    #   expect(page).to have_link 'gavin'
    # end
  end
end
