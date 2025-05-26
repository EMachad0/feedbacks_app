require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  describe 'associations' do
  it { is_expected.to have_many(:feedbacks).with_foreign_key(:reported_by_user_id).dependent(:nullify) }
  end

  describe 'validations' do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
