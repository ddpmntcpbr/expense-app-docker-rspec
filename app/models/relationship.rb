class Relationship < ApplicationRecord
  belongs_to :approver, class_name: "User"
  belongs_to :employee, class_name: "User"
  validates :approver_id, presence: true
  validates :employee_id, presence: true
end
