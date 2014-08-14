require 'rails_helper'

RSpec.describe "curriculums/index", :type => :view do
  before(:each) do
    assign(:curriculums, [
      Curriculum.create!(
        :name => "Name"
      ),
      Curriculum.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
