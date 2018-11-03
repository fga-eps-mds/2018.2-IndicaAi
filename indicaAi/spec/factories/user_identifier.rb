FactoryBot.define do
  factory :user_identifier do
    identifier { Faker::Lorem.word }
  end
end
