class GroupTransaction < ApplicationRecord
  belongs_to :group
  belongs_to :trans, class_name: 'Transaction', foreign_key: 'transaction_id'
end
