require 'faker'
puts "Running DB seed..."

# # Don't let seed duplicate data more than once
# puts "Cleaning database..."
#
# puts "Creating sample Users..."
# User.create([
#     {
#       fname: "Neeson",
#       lname: "Grant",
#       username: "ngrant",
#       email: "new@email.com",
#       password_digest: "$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq",
#       created_at: "2018-04-14 02:09:44.528632",
#       updated_at: "2018-04-19 16:22:55.254084"
#     },
#     {
#       fname: "Salma",
#       lname: "Tine",
#       username: "stine",
#       email: "salma@hotmail.com",
#       password_digest: "$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq",
#       created_at: "2018-04-14 02:17:30.310658",
#       updated_at: "2018-04-14 02:17:30.310658"
#     },
#     {
#       fname: "Rend",
#       lname: "Miller",
#       username: "rmiller",
#       email: "hend@anything.com",
#       password_digest: "$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq",
#       created_at: "2018-04-16 23:44:09.971071",
#       updated_at: "2018-04-16 23:44:09.971071"
#     },
#     {
#       fname: "Eddie",
#       lname: "Opara",
#       username: "eopara",
#       email: "eopara@gmail.com",
#       password_digest: "$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq",
#       created_at: "2021-02-22 18:42:08.345412",
#       updated_at: "2021-02-22 18:42:08.345412"
#     }
#             ])
# puts "Users Completed..."
# puts "......."
# puts "Cleaning Listings Table"
#
# puts "......."

puts "Adding Listings to Users"
4.times do
  Listing.create({
                "name" => Faker::Name.unique.name,
                "tag_name" => Faker::Marketing.buzzwords,
                "status" => "Active", # Active/Inactive Faker?
                "first_listed" => Faker::Date.between(from: '2001-03-11', to: '2021-03-11'),
                "bedrooms" => Faker.Number.between(from: 1, to: 5) + "BR",
                "bathrooms" => Faker::Number.between(from: 1, to: 5) + "BA",
                "summary" => Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
                "sqft" => Faker::Number.between(from: 900, to: 6000) + "sq. ft.",
                "asking_price" => Faker::Commerce.price(range: 10000..30000000.0, as_string: true),
                "photo_1" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale']),
                "photo_2" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale']),
                "photo_3" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale']),
                "photo_4" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale']),
                "user_id" => User.ids.sample,
                "phone" => Faker::PhoneNumber.unique.cell_phone,
                "community" => "Homely"
          })
  end

