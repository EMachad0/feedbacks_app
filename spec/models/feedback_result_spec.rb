require 'rails_helper'

RSpec.describe FeedbackResult, type: :model do
  subject { build(:feedback_result) }

  describe 'associations' do
    it { is_expected.to belong_to(:feedback) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:affected_devices) }
    it { is_expected.to validate_presence_of(:estimated_affected_accounts) }
    it { is_expected.to validate_presence_of(:processed_time) }
  end
end
