require 'rails_helper'

RSpec.describe "admin/schools/index", :type => :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name",
        :acronym => "Acronym"
      ),
      School.create!(
        :name => "Name",
        :acronym => "Acronym"
      )
    ])
  end

  it "renders a list of admin/schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
  end
end
