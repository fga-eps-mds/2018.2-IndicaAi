FactoryBot.define do
  factory :user_identifier do
    identifier { Faker::Number.between(1, 9999) }
  end
end
