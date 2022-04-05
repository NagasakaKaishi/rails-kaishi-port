FactoryBot.define do
  factory :event do
    training { "MyString" }
    weight { 1.5 }
    set { 1 }
    start_date { "2022-04-05 06:16:28" }
    end_date { "2022-04-05 06:16:28" }
    user { nil }
  end
end
