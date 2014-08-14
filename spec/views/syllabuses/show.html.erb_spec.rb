require 'rails_helper'

RSpec.describe "syllabuses/show", :type => :view do
  before(:each) do
    @syllabus = assign(:syllabus, Syllabus.create!(
      :version => "Version",
      :subject => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Version/)
    expect(rendered).to match(//)
  end
end
