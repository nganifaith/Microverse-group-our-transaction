class Group < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                   uniqueness: true

  has_many :group_transactions
  has_many :transactions, through: :group_transactions, source: :trans
  belongs_to :user

  has_one_attached :group_icon
end
