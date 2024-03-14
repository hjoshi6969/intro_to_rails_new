# app/models/dealer.rb
class Dealer < ApplicationRecord
    has_many :product
    # Validations
    validates :name, presence: true, length: { maximum: 50 }
    validates :location, presence: true, length: { maximum: 100 }
  end
  