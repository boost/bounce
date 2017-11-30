require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'relationships' do
    it { have_and_belong_to_many(:players) }
  end
end
