FactoryBot.define do
  factory :user_identifier do
    user_id { Faker::Number.between(1, 9999) }
  end
end
