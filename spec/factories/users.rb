FactoryBot.define do
  factory :user do
    sequence(:name) { Faker::Name.unique.name }
    sequence(:email) { Faker::Internet.unique.email }
  end
end
