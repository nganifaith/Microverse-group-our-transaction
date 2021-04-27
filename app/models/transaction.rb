class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 6..30 }
  validates :description, presence: true, length: { in: 15..120 }
  validates :amount, presence: true, numericality: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :group, optional: true

  scope :all_trans, -> { includes(:user, :group) }
  scope :dsc, -> { order('created_at DESC') }
end
