# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Staff.delete_all
AdminUser.delete_all
Province.delete_all

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
end

NUMBER_OF_STAFF = 10

NUMBER_OF_STAFF.times do
  staff = Staff.create(
    fname:   Faker::Name.first_name,
    lname:   Faker::Name.last_name,
    rate:    rand(10..100),
    address: Faker::Address.street_address,
    city:    Faker::Address.city,
    postal:  Faker::Address.postcode,
    phone:   Faker::PhoneNumber.phone_number,
    title:   Faker::Job.title
  )
end

Province.create(
  name: "British Columbia",
  code: "1",
  pst:  "7",
  gst:  "5"
)

Province.create(
  name: "Alberta",
  code: "2",
  pst:  "0",
  gst:  "5"
)

Province.create(
  name: "Saskatchewan",
  code: "3",
  pst:  "6",
  gst:  "5"
)

Province.create(
  name: "Manitoba",
  code: "4",
  pst:  "7",
  gst:  "5"
)

Province.create(
  name: "Ontario",
  code: "5",
  hst:  "13"
)

Province.create(
  name: "Quebec",
  code: "6",
  pst:  "9.975",
  gst:  "5"
)

Province.create(
  name: "Nova Scotia",
  code: "7",
  hst:  "15"
)

Province.create(
  name: "New Brunswick",
  code: "8",
  hst:  "15"
)

Province.create(
  name: "Prince Edward Island",
  code: "9",
  hst:  "15"
)

Province.create(
  name: "Newfoundland and Labrador",
  code: "10",
  hst:  "15"
)

Province.create(
  name: "Yukon",
  code: "11",
  pst:  "0",
  gst:  "5"
)

Province.create(
  name: "Northwest Territories",
  code: "12",
  pst:  "0",
  gst:  "5"
)

Province.create(
  name: "Nunavut",
  code: "13",
  pst:  "0",
  gst:  "5"
)
