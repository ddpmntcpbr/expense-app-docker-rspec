class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  accepts_nested_attributes_for :users

  validates :name,  presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
  validates :address, presence: true, length: { maximum: 255 },
                      uniqueness: { case_sensitive: false }
end
