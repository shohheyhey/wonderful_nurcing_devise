FactoryBot.define do
  factory :user do
    id{Faker::Number.number}
    name{Faker::Name.name}
    sequence(:email){|n|"#{n}_#{Faker::Internet.email}"}
    password{Faker::Internet.password(min_length: 6)}
  end
end
