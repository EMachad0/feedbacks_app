FactoryBot.define do
  factory :feedback do
    organization_id { 1 }
    association :reported_by_user, factory: :user
    account_id { SecureRandom.uuid }
    installation_id { SecureRandom.uuid }
    encoded_installation_id { Base64.strict_encode64("#{installation_id}:app-id") }
    feedback_type { Feedback::FEEDBACK_TYPES.sample }
    feedback_time { Time.current }
  end
end
