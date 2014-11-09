require 'rails_helper'

RSpec.describe "synchronizations/index", :type => :view do
  before(:each) do
    assign(:synchronizations, [
      Synchronization.create!(),
      Synchronization.create!()
    ])
  end

  it "renders a list of synchronizations" do
    render
  end
end
