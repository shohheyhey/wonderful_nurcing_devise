FactoryBot.define do
  factory :category do
    id{ rand(1..3)}
    name { Faker::Name.name }
  end
end
