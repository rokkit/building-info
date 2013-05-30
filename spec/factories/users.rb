# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    fio "Ivan Petrov"
    email "email@m.ru"
    password "secret"
  end
end
