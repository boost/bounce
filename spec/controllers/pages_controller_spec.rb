require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'routing' do
    it 'routes / to pages#home' do
      expect(get: '/').to route_to('pages#home')
    end
  end
  
  describe 'GET #home' do
    before { get :home }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'assigns players to @players' do
      expect(assigns(:players)).to all(be_a(Player))
    end
  end
end
