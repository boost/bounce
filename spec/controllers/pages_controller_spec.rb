require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'routing' do
    it 'routes / to pages#home' do
      expect(get: '/').to route_to('pages#home')
    end
  end
  
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
end
