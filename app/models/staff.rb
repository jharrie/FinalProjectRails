class Staff < ApplicationRecord
  has_many :customers
  has_and_belongs_to_many :services
  has_one_attached :image
end
