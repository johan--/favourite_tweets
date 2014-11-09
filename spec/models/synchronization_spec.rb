require 'rails_helper'

RSpec.describe Synchronization, :type => :model do

  describe '#is_allowed' do
    let!(:synchronization) { create(:synchronization) }

    it do
      expect(Synchronization.is_allowed).to be_falsey
    end

    it do
      synchronization.destroy
      expect(Synchronization.is_allowed).to be_truthy
    end
  end
end
