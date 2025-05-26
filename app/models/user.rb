class User < ApplicationRecord
  has_many :feedbacks, foreign_key: :reported_by_user_id, inverse_of: :reported_by_user, dependent: :nullify

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
