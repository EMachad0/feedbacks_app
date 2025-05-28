require "base64"

class Feedback < ApplicationRecord
  belongs_to :reported_by_user, class_name: "User", foreign_key: :reported_by_user_id, optional: true, inverse_of: :feedbacks
  has_one :feedback_result, dependent: :destroy, inverse_of: :feedback

  has_enumeration_for :feedback_type, with: FeedbackType, create_helpers: true

  validates :organization_id, presence: true
  validates :feedback_time, presence: true

  before_validation :compute_encoded_installation_id

  private

    def compute_encoded_installation_id
      return if installation_id.blank?

      self.encoded_installation_id = Base64.strict_encode64("#{installation_id}:#{AppConstants::APP_ID}")
    end
end
