class Cart < ApplicationRecord
  has_and_belongs_to_many :service
  has_and_belongs_to_many :product
  belongs_to :customer
end
