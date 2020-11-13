class Service < ApplicationRecord
  has_and_belongs_to_many :carts
  has_and_belongs_to_many :staffs
end
