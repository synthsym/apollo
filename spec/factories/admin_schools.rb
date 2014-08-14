# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_school, :class => 'Admin::School' do
    name "MyString"
    acronym "MyString"
  end
end
