# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      'Londres',
    category:     'italian'
  },
  {
    name:         'Le Côtier',
    address:      'Paris 12',
    category:     'french'
  },
  {
    name:         'Le Dragon',
    address:      'PAris 9',
    category:     'chinese'
  },
  {
    name:         'Chez Antonio',
    address:      'Paris 16',
    category:     'italian'
  },
  {
    name:         'Des frites',
    address:      'Paris 1',
    category:     'belgian'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
