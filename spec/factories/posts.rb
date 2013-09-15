# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    user_id 1
    page_title "MyString"
    meta_description "MyString"
    body "MyText"
    published "2013-08-25 19:32:49"
    publish_after "2013-08-25 19:32:49"
  end
end
