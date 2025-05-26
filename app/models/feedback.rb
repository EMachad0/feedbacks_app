class Feedback < ApplicationRecord
  belongs_to :reported_by_user, class_name: "User", foreign_key: :reported_by_user_id, optional: true, inverse_of: :feedbacks
  has_one :feedback_result, dependent: :destroy, inverse_of: :feedback

  has_enumeration_for :feedback_type, with: FeedbackType, create_helpers: true

  validates :organization_id, presence: true
  validates :feedback_time, presence: true
end
