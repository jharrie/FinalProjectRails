class Product < ApplicationRecord
  has_and_belongs_to_many :cart

  has_one_attached :image
end
