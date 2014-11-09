require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SynchronizationsHelper. For example:
#
# describe SynchronizationsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SynchronizationsHelper, :type => :helper do

  describe '.synchronization_time' do
    let(:synchronization) { {'cron' => '15 1 * * *'} }

    it 'should return correct time' do
      expect(synchronization_time(synchronization)).to eq('Every day at 1:15am')
    end
  end
end
