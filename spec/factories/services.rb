FactoryBot.define do
  factory :service do
    user { nil }
    category { nil }
    name { "MyString" }
    fee { 1 }
  end
end
