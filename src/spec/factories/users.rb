FactoryBot.define do
  factory :user do
    name                 {"test"}
    email                 {"test@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}
  end
end
