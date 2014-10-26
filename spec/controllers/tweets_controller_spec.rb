require 'spec_helper'

RSpec.describe TweetsController, :type => :controller do
  describe 'GET #index' do
    let!(:tweet) { create(:tweet) }

    it 'should return tweets list' do
      get :index
      expect(assigns(:tweets)).to match_array([tweet])
    end

    it 'should be sorted by desc' do
      tweet2 = create(:tweet)
      get :index
      expect(assigns(:tweets)).to match_array([tweet2, tweet])
    end
  end
end
