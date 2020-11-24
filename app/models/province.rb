class Province < ApplicationRecord
  has_many :carts
  has_many :users
end
