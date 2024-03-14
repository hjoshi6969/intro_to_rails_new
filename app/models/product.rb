class Product < ApplicationRecord
  belongs_to :category
  belongs_to :dealer
end
