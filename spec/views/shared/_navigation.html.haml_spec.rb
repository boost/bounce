require 'rails_helper'

RSpec.describe 'shared/_navigation.html.haml', type: :view do
  context 'navigation' do
    it 'displays the elements' do
      render

      expect(rendered).to match(/Ping Pong/)
    end
  end
end
