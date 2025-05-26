require 'rails_helper'

RSpec.describe Feedback, type: :model do
  subject { build(:feedback) }

  # Associations
  it { is_expected.to belong_to(:reported_by_user).class_name('User').optional }
  it { is_expected.to have_one(:feedback_result).dependent(:destroy) }

  # Validations
  it { is_expected.to validate_presence_of(:organization_id) }
  it { is_expected.to validate_presence_of(:feedback_time) }
  it { is_expected.to validate_inclusion_of(:feedback_type).in_array(Feedback::FEEDBACK_TYPES) }
end
