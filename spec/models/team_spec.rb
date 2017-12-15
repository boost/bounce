require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'relationships' do
    it { have_and_belong_to_many(:players) }
  end
end
