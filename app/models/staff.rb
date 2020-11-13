class Staff < ApplicationRecord
  has_many :customer
  has_and_belongs_to_many :service
  has_one_attached :image
end
