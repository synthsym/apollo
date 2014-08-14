require 'rails_helper'

RSpec.describe "admin/schools/edit", :type => :view do
  before(:each) do
    @admin_school = assign(:admin_school, School.create!(
      :name => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders the edit admin_school form" do
    render

    assert_select "form[action=?][method=?]", admin_school_path(@admin_school), "post" do

      assert_select "input#admin_school_name[name=?]", "admin_school[name]"

      assert_select "input#admin_school_acronym[name=?]", "admin_school[acronym]"
    end
  end
end
