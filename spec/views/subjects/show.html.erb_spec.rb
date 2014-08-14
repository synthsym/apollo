require 'rails_helper'

RSpec.describe "subjects/show", :type => :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :name => "Name",
      :curriculum => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
