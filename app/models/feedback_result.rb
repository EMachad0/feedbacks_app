class FeedbackResult < ApplicationRecord
  belongs_to :feedback

  validates :affected_devices, :estimated_affected_accounts, :processed_time, presence: true
end
