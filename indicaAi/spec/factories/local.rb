FactoryBot.define do
  factory :local do
    # generates locations from the tv serie 'Friends' :D
    name { Faker::Friends.location }
    # generates quotations from 'Friends'
    description { Faker::Friends.quote }
    category { FactoryBot.create :category }
    latitude { Faker::Number.decimal(10, 8) }
    longitude { Faker::Number.decimal(10, 8) }
    address { Faker::Address.street_address }
    telephone { Faker::PhoneNumber.cell_phone }
  end
end
