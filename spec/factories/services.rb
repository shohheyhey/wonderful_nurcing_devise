FactoryBot.define do
  factory :service do
    id {Faker::Number.number}
    user_id { Faker::Number.number  }
    category { Faker::Number.number }
  end
end
