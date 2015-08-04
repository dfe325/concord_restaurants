# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# restaurants = [
#   ["Helen's Restaurant", "Main Street", "app/assets/images/helens.jpg"],
#   ["Salt Box Kitchen", "Commonwealth Avenue", "app/assets/images/SBK.jpg"],
#   ["Comella", "Main Street", "app/assets/images/comella.jpg"],
#   ["Bondir", "Concord Street", "app/assets/images/bondir.jpg"],
#   ["80 Thoreau", "Concord Street", "app/assets/images/80thoreau.jpg"],
#   ["La Provence", "Thoreau Street", "app/assets/images/laprovence.jpg"],
#   ["Concord Cheese Shop", "Concord Street", "app/assets/images/concordcheesesop.jpg"]
# ]
# restaurants.each do |array|
#   Restaurant.create!(
#     name: array[0],
#     location: array[1],
#     image: File.new(array[2])
#   )
# end
restaurants = [
  ["Helen's Restaurant", "Main Street"],
  ["Salt Box Kitchen", "Commonwealth Avenue"],
  ["Comella", "Main Street"],
  ["Bondir", "Concord Street"],
  ["80 Thoreau", "Concord Street"],
  ["La Provence", "Thoreau Street"],
  ["Concord Cheese Shop", "Concord Street"]
]
restaurants.each do |array|
  Restaurant.create!(
    name: array[0],
    location: array[1],
  )
end
