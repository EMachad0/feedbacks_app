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
end
