# app/models/product.rb
class Product < ApplicationRecord
  # Associations
  belongs_to :category
  belongs_to :dealer
  has_many :dealer

  # Validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :category_id, presence: true
  validates :dealer_id, presence: true
end
