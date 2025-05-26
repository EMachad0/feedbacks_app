require 'rails_helper'

RSpec.describe FeedbackResult, type: :model do
  subject { build(:feedback_result) }

  # Associations
  it { is_expected.to belong_to(:feedback) }

  # Validations
  it { is_expected.to validate_presence_of(:affected_devices) }
  it { is_expected.to validate_presence_of(:estimated_affected_accounts) }
  it { is_expected.to validate_presence_of(:processed_time) }
end
