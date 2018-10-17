FactoryBot.define do
  factory :favorite_local do
    user_identifier { FactoryBot.create :user_identifier }
    local { FactoryBot.create :local }
  end
end
