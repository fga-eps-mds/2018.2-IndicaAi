FactoryBot.define do
  factory :local do
    name {Faker::Lorem.word}
    RatingRate {Faker::Number.decimal(2)}
  end
end
