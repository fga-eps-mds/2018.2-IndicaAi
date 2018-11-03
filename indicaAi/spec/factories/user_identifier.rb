FactoryBot.define do
  factory :user_identifier do
    identifier { Faker::StarWars.quote }
  end
end
