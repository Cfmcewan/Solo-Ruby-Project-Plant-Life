require_relative('../models/nursery.rb')
require_relative('../models/plant.rb')

require('pry')

nusery1 = Nursery.new({
  'name' => 'Avondale',
  'location' => 'Coventry',
  'url' => "/images/avondale_logo.jpg"
  })

nusery2 = Nursery.new({
  'name' => 'Binny Plants',
  'location' => 'West Lothian',
  'url' => "/images/binny_plants_logo.jpg"
  })

nursery3 = Nursery.new({
  'name' => 'Architectural Plants',
  'location' => 'West Sussex',
  'url' => "/images/architectural_plants_logo.jpg"
  })





binding.pry
nil
