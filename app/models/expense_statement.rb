class ExpenseStatement < ApplicationRecord
  belongs_to :user
  has_many :expense_contents
end
