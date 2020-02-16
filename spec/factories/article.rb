FactoryBot.define do 
  factory :article do
    title { Faker::Book::Dune.character }
    description { Faker::Book::Dune.quote }
    password_digest { Faker::Internet.password}
  end
end