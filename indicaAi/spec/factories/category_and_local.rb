FactoryBot.define do
  factory :category_and_local do
    category { FactoryBot.create :category }
    local { FactoryBot.create :local }
  end
end
