class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 6..30 }
  validates :description, presence: true, length: { in: 10..120 }
  validates :amount, presence: true, numericality: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :group
  has_many :group_transactions
  has_many :groups, through: :group_transactions

  scope :all_trans, -> { includes(:groups) }
  scope :dsc, -> { order('created_at DESC') }
end
