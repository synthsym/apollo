require 'rails_helper'

RSpec.describe "curriculums/edit", :type => :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculum_path(@curriculum), "post" do

      assert_select "input#curriculum_name[name=?]", "curriculum[name]"
    end
  end
end
