FactoryBot.define do
  factory :category do
    id{Faker::Number.number}
    user_id { nil }
    name { Faker::Name.name }
  end
end
