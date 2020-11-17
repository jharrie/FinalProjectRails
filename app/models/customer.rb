class Customer < ApplicationRecord
  has_one :staff, through: :users
  has_one :cart
  has_one :user

  validates :fname, :lname, :addr, :city, :prov, :postal, presence: true
  validates :login, uniqueness: true
end
