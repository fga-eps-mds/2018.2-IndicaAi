FactoryBot.define do
  factory :local_rating do
    value { Faker::Number.between(0, 5) }
    local { create(:local) }
  end
end
