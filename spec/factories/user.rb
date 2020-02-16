FactoryBot.define do 
  factory :user do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password}
    association :user
  end
end