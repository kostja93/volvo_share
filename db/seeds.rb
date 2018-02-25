# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { name: 'Volvo_1', color: 'yellow', seats: 4, horse_power: 150, lat: 47.4142862, lng: 9.3567323},
  { name: 'Volvo_2', color: 'green', seats: 4, horse_power: 130, lat: 47.4342862, lng: 9.3587423},
  { name: 'Volvo_3', color: 'yellow', seats: 5, horse_power: 120, lat: 47.4541865, lng: 9.3257323},
  { name: 'Volvo_4', color: 'blue', seats: 2, horse_power: 340, lat: 47.4042862, lng: 9.3267323},
  { name: 'Volvo_5', color: 'red', seats: 5, horse_power: 180, lat: 47.4592362, lng: 9.3535223},
  { name: 'Volvo_6', color: 'silver', seats: 6, horse_power: 110, lat: 47.3942862, lng: 9.4167623}
].each do |car_data|
  Car.create(car_data)
end

[
  {title: "+5 HP", description: "Enable 5 more HP for 30 days", price: 100 },
  {title: "+10 HP", description: "Enable 10 more HP for 30 days", price: 150},
  {title: "Seat Heating", description: "Enable seat heating for 30 days", price: 50}
].each do |product|
  Product.create(product)
end
