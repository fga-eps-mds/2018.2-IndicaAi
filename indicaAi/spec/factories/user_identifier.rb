FactoryBot.define do
  factory :user_identifier do
    identifier { Faker::Lorem.unique.word }
  end
end
