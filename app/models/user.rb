# app/models/user.rb
class User < ApplicationRecord
    # Validations
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
  end
  