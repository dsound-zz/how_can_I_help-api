FactoryBot.define do
  factory :location do
    address { Faker::Address.street_name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip_code }
    bourogh { "MyString" }
    latitude { 1 }
    longitude { 1 }
  end
end
