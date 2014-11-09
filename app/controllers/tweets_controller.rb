class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.order(created_at: :desc).
        paginate(page: params[:page], per_page: 10)
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  # def update
  #   if @tweet.update(tweet_params)
  #     redirect_to @tweet, notice: 'Tweet was successfully updated.'
  #   else
  #     render action: 'edit'
  #   end
  # end

# DELETE /tweets/1
# DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    redirect_to tweets_url
  end

  def get_recent
    Tweet.get_recent_tweets
    redirect_to tweets_url
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
#   def tweet_params
#     params.require(:tweet).permit(:message)
#   end

end
