require 'rails_helper'

RSpec.describe Feedback, type: :model do
  subject { build(:feedback) }

  describe 'associations' do
    it { is_expected.to belong_to(:reported_by_user).class_name('User').optional }
    it { is_expected.to have_one(:feedback_result).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:organization_id) }
    it { is_expected.to validate_presence_of(:feedback_time) }
  end

  describe 'callbacks' do
    it 'computes encoded_installation_id from installation_id and APP_ID constant' do
      installation_id = SecureRandom.uuid
      stub_const('AppConstants::APP_ID', 'my-app-id')

      feedback = create(:feedback, installation_id: installation_id)

      expected_value = Base64.strict_encode64("#{installation_id}:my-app-id")
      expect(feedback.encoded_installation_id).to eq(expected_value)
    end
  end
end
