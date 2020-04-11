class ExpenseStatement < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :expense_contents
  accepts_nested_attributes_for :expense_contents, allow_destroy: true
  has_one :expense_approval
  accepts_nested_attributes_for :expense_approval, allow_destroy: true
end
