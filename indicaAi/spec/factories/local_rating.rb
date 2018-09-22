FactoryBot.define do
  factory :local_rating do
    value { Faker::Number.between(1, 5) }
    local { create(:local) }
  end
end
