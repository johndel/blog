# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    email "MyString"
    title "MyString"
    body "MyText"
  end
end
