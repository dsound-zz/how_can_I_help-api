FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Name.first_name}
    email { Faker::Internet.email }
    password_digest { Faker::String.random(6..15) }
  end
end
