FactoryBot.define do
  factory :local_rating do
    value { Faker::Number.between(0, 5) }
    local { FactoryBot.create :local }
    user_identifier { FactoryBot.create :user_identifier }
  end
end
