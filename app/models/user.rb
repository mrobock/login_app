class User < ApplicationRecord
  validates :first_name, presence: { message: "Please enter a first name" }
  validates :last_name, presence: { message: "Please enter a last name" }
  validates :email, presence: { message: "Please enter an email" }
  validates :username, presence: { message: "Please enter a username" }
  validates :username, uniqueness: { message: "This username has alreay been taken" }
  validates :password, presence: { message: "Please enter a password" }, length: {in: 6..20, message:"Your password is not long enough"}, format: { with: /[!%$]/, message: "Your password needs a valid symbol (!$#)" }
  validates :zip, numericality: { only_integer: true, message:"Invalid zipcode"}
end
