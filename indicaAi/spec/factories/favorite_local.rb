FactoryBot.define do
  factory :favorite_local do
    user_identifier { FactoryBot.create :user_identifier }
    local { FactoryBot.create :local }
    label { Faker::Lorem.word }
    body { Faker::Lorem.paragraph }
  end
end
