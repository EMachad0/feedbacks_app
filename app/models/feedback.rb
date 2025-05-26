class Feedback < ApplicationRecord
  FEEDBACK_TYPES = %w[verified reset account_takeover identity_fraud].freeze

  belongs_to :reported_by_user, class_name: "User", foreign_key: :reported_by_user_id, optional: true, inverse_of: :feedbacks
  has_one :feedback_result, dependent: :destroy, inverse_of: :feedback

  validates :organization_id, presence: true
  validates :feedback_type, inclusion: { in: FEEDBACK_TYPES }
  validates :feedback_time, presence: true

  scope :by_account_ids, ->(ids) { where(account_id: ids) if ids.present? }
  scope :by_encoded_installation_ids, ->(ids) { where(encoded_installation_id: ids) if ids.present? }
  scope :by_feedback_types, ->(types) { where(feedback_type: types) if types.present? }
  scope :between_dates, lambda { |column, range|
    where(column => range) if range.present?
  }
end
