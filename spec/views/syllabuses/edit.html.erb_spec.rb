require 'rails_helper'

RSpec.describe "syllabuses/edit", :type => :view do
  before(:each) do
    @syllabus = assign(:syllabus, Syllabus.create!(
      :version => "MyString",
      :subject => nil
    ))
  end

  it "renders the edit syllabus form" do
    render

    assert_select "form[action=?][method=?]", syllabus_path(@syllabus), "post" do

      assert_select "input#syllabus_version[name=?]", "syllabus[version]"

      assert_select "input#syllabus_subject_id[name=?]", "syllabus[subject_id]"
    end
  end
end
