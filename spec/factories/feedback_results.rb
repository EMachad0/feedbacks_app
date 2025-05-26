FactoryBot.define do
  factory :feedback_result do
    feedback
    affected_devices { Faker::Number.between(from: 1, to: 50) }
    estimated_affected_accounts { Faker::Number.between(from: 1, to: 20) }
    processed_time { Faker::Time.backward(days: 30) }
  end
end
