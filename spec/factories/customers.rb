FactoryBot.define do
  factory :customer do
    user { nil }
    category { nil }
    name { "MyString" }
    age { 1 }
    birthday { "2020-10-02" }
    kaigodo { 1 }
    medical_history { "MyText" }
    discription { "MyText" }
  end
end
