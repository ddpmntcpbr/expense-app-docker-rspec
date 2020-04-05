class ExpenseStatement < ApplicationRecord
  belongs_to :user
  has_many :expense_contents
  has_one :expense_approval
end
