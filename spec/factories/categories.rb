FactoryBot.define do
  factory :category do
    id{Faker::Number.number}
    name { Faker::Name.name }
  end
end
