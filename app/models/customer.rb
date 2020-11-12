class Customer < ApplicationRecord
  belongs_to :staff
  belongs_to :cart

  validates :fname, :lname, :addr, :city, :prov, :postal, presence: true
  validates :login, uniqueness: true
end
