class ExpenseStatement < ApplicationRecord
  belongs_to :user
  has_many :expense_contents, dependent: :destroy
  accepts_nested_attributes_for :expense_contents, allow_destroy: true
  has_one :expense_approval, dependent: :destroy
  accepts_nested_attributes_for :expense_approval, allow_destroy: true
end
