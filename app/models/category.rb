# app/models/category.rb
class Category < ApplicationRecord
    # Validations
    validates :name, presence: true, length: { maximum: 50 }
  end
  