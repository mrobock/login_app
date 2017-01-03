class Contact < ApplicationRecord
  belongs_to :user
  validates :first_name, uniqueness: {scope: [:last_name, :email], message: "This user already exists. Please update instead"}
  validates :first_name, :email, :last_name, presence: true
end
