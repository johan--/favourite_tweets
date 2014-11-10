require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do
  describe 'GET #index' do
    let!(:tweets) { create_list(:tweet, 3) }

    it 'should return tweets list' do
      get :index
      expect(assigns(:tweets)).to match_array(tweets)
    end

    it 'should be sorted by desc' do
      tweet2 = create(:tweet)
      get :index
      expect(assigns(:tweets).first).to eq(tweet2)
    end

    it 'should be only 10 in list' do
      create_list(:tweet, 10)
      get :index
      expect(assigns(:tweets).size).to eq(10)
    end

    context 'should filter by lang' do
      let!(:tweet) { create(:tweet, lang: 'es') }

      it 'should return only es tweets' do
        get :index, langs: 'es'
        expect(assigns(:tweets)).to match_array([tweet])
      end

      it 'should return only es tweets' do
        get :index, langs: ['es']
        expect(assigns(:tweets)).to match_array([tweet])
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:tweet) { create(:tweet) }

    it 'should destroy tweet' do
      expect {
        delete :destroy, id: tweet.id
      }.to change(Tweet, :count).by(-1)
    end

    it 'should redirect to index' do
      delete :destroy, id: tweet.id
      expect(response).to be_redirect
    end
  end

  describe 'GET #get_recent' do
    before do
      allow(Twitter::Client).to receive(:get_recent_tweets).and_return([])
    end

    it 'should call Tweet.get_recent_tweet' do
      get :get_recent
    end

    it 'should redirect to index' do
      get :get_recent
      expect(response).to be_redirect
    end
  end
end
