class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, invite_for: 2.weeks
    
  belongs_to :company
  has_many :expense_statements
  has_many :expense_approvals
end
