class Customer < ApplicationRecord
  has_one :staff
  has_one :cart

  validates :fname, :lname, :addr, :city, :prov, :postal, presence: true
  validates :login, uniqueness: true
end
