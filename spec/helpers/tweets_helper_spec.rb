require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TweetsHelper. For example:
#
# describe TweetsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TweetsHelper, :type => :helper do

  describe '.message' do
    let(:tweet) { build(:tweet) }

    it 'should return formatted tweet' do
      expect(message(tweet)).to eq(tweet.message)
    end
  end
end
