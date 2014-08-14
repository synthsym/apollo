require 'rails_helper'

RSpec.describe "admin/schools/show", :type => :view do
  before(:each) do
    @admin_school = assign(:admin_school, School.create!(
      :name => "Name",
      :acronym => "Acronym"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Acronym/)
  end
end
