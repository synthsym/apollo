require 'rails_helper'

RSpec.describe "subjects/new", :type => :view do
  before(:each) do
    assign(:subject, Subject.new(
      :name => "MyString",
      :curriculum => nil
    ))
  end

  it "renders new subject form" do
    render

    assert_select "form[action=?][method=?]", subjects_path, "post" do

      assert_select "input#subject_name[name=?]", "subject[name]"

      assert_select "input#subject_curriculum_id[name=?]", "subject[curriculum_id]"
    end
  end
end
