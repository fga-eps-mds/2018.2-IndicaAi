FactoryBot.define do
  factory :favorite_local do
    user_identifier { UserIdentifier.create }
    local { FactoryBot.create :local }
    label { Faker::Lorem.word }
  end
end
