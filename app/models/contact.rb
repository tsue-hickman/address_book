class Contact < ApplicationRecord
  belongs_to :user
  
  validates :first_name, :last_name, :phone, presence: true
  validates :phone, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "must be in format: 555-123-4567" }
end