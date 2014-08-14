require 'rails_helper'

RSpec.describe "admin/schools/new", :type => :view do
  before(:each) do
    assign(:admin_school, School.new(
      :name => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders new admin_school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input#admin_school_name[name=?]", "admin_school[name]"

      assert_select "input#admin_school_acronym[name=?]", "admin_school[acronym]"
    end
  end
end
