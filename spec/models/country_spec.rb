require 'rails_helper'

describe Country, type: :model do
  describe 'relationships' do
    it { should have_many :cities }
  end
end
