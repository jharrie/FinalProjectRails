class Staff < ApplicationRecord
  has_many :customers, through: :users
  has_one :user

  has_and_belongs_to_many :services
  has_one_attached :image
end
