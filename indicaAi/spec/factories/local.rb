FactoryBot.define do
  factory :local do
    # generates locations from the tv serie 'Friends' :D
    name { Faker::Friends.location }
    category { FactoryBot.create :category }
    # generates quotations from 'Friends'
    description { Faker::Friends.quote }
    latitude { Faker::Number.decimal(2, 8) }
    longitude { Faker::Number.decimal(2, 8) }
    address { Faker::Address.street_address }
    telephone { Faker::PhoneNumber.cell_phone }
  end
end
