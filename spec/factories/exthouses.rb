# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exthouse do
    serviceorg
    name "MyString"
    byear "2013-05-30"
    overhault false
    elevator false
    consierge false
    user
  end
end
