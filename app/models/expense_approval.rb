class ExpenseApproval < ApplicationRecord
  belongs_to :user
  belongs_to :expense_statement
end
