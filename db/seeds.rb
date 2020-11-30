require "uri"

Staff.delete_all
AdminUser.delete_all
Province.delete_all
Product.delete_all
Category.delete_all
About.delete_all
User.delete_all

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
end

NUMBER_OF_STAFF = 10
NUMBER_OF_CATEGORIES = 4
NUMBER_OF_PRODUCTS = 100
NUMBER_OF_CUSTOMERS = 10

NUMBER_OF_CATEGORIES.times do
  Category.create(
    name:        Faker::Commerce.department(max: 1),
    description: Faker::Commerce.material
  )
end

NUMBER_OF_PRODUCTS.times do
  Product.create(
    name:            Faker::Color.color_name,
    price_cents:     rand(10..100),
    discount:        Faker::Boolean.boolean,
    discount_amount: rand(1..10),
    description:     Faker::Hipster.sentence(word_count: rand(4..10)),
    category_id:     rand(1...5),
    stock:           rand(0..40)
  )

  # query = URI.encode_www_form_component(product.name)
  # downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
  # product.image.attach(io: downloaded_image, filename: "m-#{product.upc}.jpg")
end

NUMBER_OF_STAFF.times do
  Staff.create(
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

About.create(
  title:   "Welcome to my website about final projects.",
  subtext: "There is literally nothing here.",
  body:    "And this is where the body would go!"
)

Province.create(
  name: "British Columbia",
  code: "BC",
  pst:  7,
  gst:  5
)

Province.create(
  name: "Alberta",
  code: "AB",
  pst:  0,
  gst:  5
)

Province.create(
  name: "Saskatchewan",
  code: "SK",
  pst:  6,
  gst:  5
)

Province.create(
  name: "Manitoba",
  code: "MB",
  pst:  7,
  gst:  5
)

Province.create(
  name: "Ontario",
  code: "ON",
  hst:  13
)

Province.create(
  name: "Quebec",
  code: "QC",
  pst:  9.975,
  gst:  5
)

Province.create(
  name: "Nova Scotia",
  code: "NS",
  hst:  15
)

Province.create(
  name: "New Brunswick",
  code: "NB",
  hst:  15
)

Province.create(
  name: "Prince Edward Island",
  code: "PE",
  hst:  15
)

Province.create(
  name: "Newfoundland and Labrador",
  code: "NF",
  hst:  15
)

Province.create(
  name: "Yukon",
  code: "YK",
  pst:  0,
  gst:  5
)

Province.create(
  name: "Northwest Territories",
  code: "NW",
  pst:  0,
  gst:  5
)

Province.create(
  name: "Nunavut",
  code: "NV",
  pst:  0,
  gst:  5
)
