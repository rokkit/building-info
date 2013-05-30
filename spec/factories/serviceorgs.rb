# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :serviceorg do
    name "MyString"
    adress "MyText"
    description "MyText"
    typeofservice "MyString"
    house
  end
end
