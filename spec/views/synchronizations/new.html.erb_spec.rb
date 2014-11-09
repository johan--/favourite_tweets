require 'rails_helper'

RSpec.describe "synchronizations/new", :type => :view do
  before(:each) do
    assign(:synchronization, Synchronization.new())
  end

  it "renders new synchronization form" do
    render

    assert_select "form[action=?][method=?]", synchronizations_path, "post" do
    end
  end
end
