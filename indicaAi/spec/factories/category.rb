FactoryBot.define do
  factory :category do
    name { Faker::Lorem.sentences(1) }
  end
end