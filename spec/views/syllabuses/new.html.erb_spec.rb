require 'rails_helper'

RSpec.describe "syllabuses/new", :type => :view do
  before(:each) do
    assign(:syllabus, Syllabus.new(
      :version => "MyString",
      :subject => nil
    ))
  end

  it "renders new syllabus form" do
    render

    assert_select "form[action=?][method=?]", syllabuses_path, "post" do

      assert_select "input#syllabus_version[name=?]", "syllabus[version]"

      assert_select "input#syllabus_subject_id[name=?]", "syllabus[subject_id]"
    end
  end
end
