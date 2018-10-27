FactoryBot.define do
  factory :category do
    name { Faker::Lorem.characters(10) }
  end
end
