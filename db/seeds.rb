# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy Species"
Species.destroy_all if Rails.env.development?

puts "Create Species"

Species.create!(
  name: "Lizard-Man",
  subtype: "Humanoid-ish",
  traits: "Amphibian, Scally, other words."
)
Species.create!(
  name: "Quelm",
  subtype: "Avian",
  traits: "A cool and calm bird who is also plant-like",
  image_path: "https://res.cloudinary.com/johngfreeman/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566570533/quelm.png"
)
Species.create!(
  name: "Snaw",
  subtype: "Dino",
  traits: "Makes a snaaw sound with its weirdly shaped face"
)
