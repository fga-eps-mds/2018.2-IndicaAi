FactoryBot.define do
  factory :local do
    name { Faker::Nation.capital_city }
    RatingRate { Faker::Number.decimal(2) }
  end
end
