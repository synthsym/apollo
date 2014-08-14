require 'rails_helper'

RSpec.describe "curriculums/new", :type => :view do
  before(:each) do
    assign(:curriculum, Curriculum.new(
      :name => "MyString"
    ))
  end

  it "renders new curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculums_path, "post" do

      assert_select "input#curriculum_name[name=?]", "curriculum[name]"
    end
  end
end
