require 'rails_helper'

RSpec.describe "syllabuses/index", :type => :view do
  before(:each) do
    assign(:syllabuses, [
      Syllabus.create!(
        :version => "Version",
        :subject => nil
      ),
      Syllabus.create!(
        :version => "Version",
        :subject => nil
      )
    ])
  end

  it "renders a list of syllabuses" do
    render
    assert_select "tr>td", :text => "Version".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
