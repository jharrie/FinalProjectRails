class Cart < ApplicationRecord
  has_and_belongs_to_many :services
  has_many :line_items
  has_many :products, through: :line_items
  has_one :province
end
