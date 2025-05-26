FactoryBot.define do
  factory :feedback_result do
    feedback
    affected_devices { rand(1..50) }
    estimated_affected_accounts { rand(1..20) }
    processed_time { Time.current }
  end
end
