require 'rails_helper'

RSpec.describe 'shared/_navigation.html.haml', type: :view do
  before do
    def view.current_player
      false
    end
  end

  context 'navigation' do
    it 'displays the elements' do
      render

      expect(rendered).to match(/Bounce/)
    end
  end
end
