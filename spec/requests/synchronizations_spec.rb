require 'rails_helper'

RSpec.describe "Synchronizations", :type => :request do
  describe "GET /synchronizations" do
    it "works! (now write some real specs)" do
      get synchronizations_path
      expect(response).to have_http_status(200)
    end
  end
end
