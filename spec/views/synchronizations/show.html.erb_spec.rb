require 'rails_helper'

RSpec.describe "synchronizations/show", :type => :view do
  before(:each) do
    @synchronization = assign(:synchronization, Synchronization.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
