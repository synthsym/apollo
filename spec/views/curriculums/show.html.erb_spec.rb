require 'rails_helper'

RSpec.describe "curriculums/show", :type => :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
