require 'rails_helper'

RSpec.describe "synchronizations/edit", :type => :view do
  before(:each) do
    @synchronization = assign(:synchronization, Synchronization.create!())
  end

  it "renders the edit synchronization form" do
    render

    assert_select "form[action=?][method=?]", synchronization_path(@synchronization), "post" do
    end
  end
end
