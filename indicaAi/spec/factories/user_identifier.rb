FactoryBot.define do
  factory :user_identifier do
    identifier { Faker::Number.unique.between(1, 9999) }
  end
end
