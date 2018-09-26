FactoryBot.define do
  factory :local do
    # generates locations from the tv serie 'Friends' :D
    name { Faker::Friends.location }
    # generates quotations from 'Friends'
    description { Faker::Friends.quote }
  end
end
