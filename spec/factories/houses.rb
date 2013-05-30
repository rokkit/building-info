# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :house do
    street
    metro
    number 1
    building 1
  end
end
