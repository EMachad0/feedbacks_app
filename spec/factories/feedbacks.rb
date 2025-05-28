FactoryBot.define do
  factory :feedback do
    organization_id { Faker::Number.between(from: 1, to: 3) }
    association :reported_by_user, factory: :user
    account_id { SecureRandom.uuid }
    installation_id { SecureRandom.uuid }
    feedback_type { FeedbackType.list.sample }
    feedback_time { Faker::Time.between(from: 30.days.ago, to: Time.current) }
  end
end
