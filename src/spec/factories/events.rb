FactoryBot.define do
  factory :event do
    training { "MyString" }
    set { 1 }
    memo { "MyText" }
    user { nil }
  end
end
