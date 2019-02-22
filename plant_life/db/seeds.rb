require_relative('../models/nursery.rb')
require_relative('../models/plant.rb')

Plant.delete_all()
Nursery.delete_all()

avondale = Nursery.new({
  'name' => 'The Avondale',
  'location' => 'Coventry',

  })

avondale.save()

binny_plants = Nursery.new({
  'name' => 'Binny Plants',
  'location' => 'West Lothian',

  })

binny_plants.save()

architectural_plants = Nursery.new({
  'name' => 'Architectural Plants',
  'location' => 'West Sussex',

  })

architectural_plants.save()

avondale.name = 'Avondale'
avondale.update()

aloe_vera = Plant.new({
  'name' => 'Aloe Vera',
  'usp' => 'This plant needs lots of sun, water and warmth to stay healthy. Cut open a leaf and use the gel inside to soothe burns (both from sun or fire), relieve the itching of bug bites or poison ivy.',
  'stock_quantity' => 10,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/aloe_vera.jpg",
  'plant_type' => 'Succulent',
  'nursery_id' => architectural_plants.id
  })

aloe_vera.save()

areca_palm = Plant.new({
  'name' => 'Areca Palm',
  'usp' => 'A natural humidifier – around 6 feet tall it can put as much as a litre of water into the air in a day.  It needs bright filtered light to be healthiest.',
  'stock_quantity' => 12,
  'buying_cost' => 38,
  'selling_price' => 85,
  'url' => "/images/areca_palm.jpg",
  'plant_type' => 'Over 50cm',
  'nursery_id' => avondale.id
  })

areca_palm.save()

dracaena = Plant.new({
  'name' => 'Dracaena',
  'usp' => 'Low maintenance plant, needs indirect sunlight and slightly moist soil, one of the most efficient plants at removing toxins from the air - emits high oxygen content.',
  'stock_quantity' => 6,
  'buying_cost' => 12,
  'selling_price' => 35,
  'url' => "/images/dracaena.jpg",
  'plant_type' => 'Succulent',
  'nursery_id' => avondale.id
  })

dracaena.save()

english_ivy = Plant.new({
  'name' => 'English Ivy',
  'usp' => 'Helps reduce mould in the home.  Studies show that keeping an English Ivy plant on your desk will help to give you better focus because it can also absorb trace amounts of benzene which is a chemical found in office equipment.',
  'stock_quantity' => 7,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/english_ivy.jpg",
  'plant_type' => 'Verigated Leaf',
  'nursery_id' => binny_plants.id
  })

english_ivy.save()

spider_plant = Plant.new({
  'name' => 'Spider Plant',
  'usp' => 'A  common and hardy houseplant, it’s one of the plants that NASA studied as a way to keep air clean and healthy in future space stations.  Within just two days, this plant can remove up to 90 percent of the toxins in your indoor air.',
  'stock_quantity' => 10,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/spider_plant.jpg",
  'plant_type' => 'Verigated Leaf',
  'nursery_id' => binny_plants.id
  })

spider_plant.save()

weeping_fig = Plant.new({
  'name' => 'Weeping Fig',
  'usp' => 'Grows slowly and doesn’t like being moved around the home (will drop its leaves).  Likes a bright spot.  This plant is particularly good at filtering formaldehyde, xylene and toluene.',
  'stock_quantity' => 3,
  'buying_cost' => 24,
  'selling_price' => 50,
  'url' => "/images/weeping_fig.jpg",
  'plant_type' => 'Over 50cm',
  'nursery_id' => binny_plants.id
  })

weeping_fig.save()

azaleas = Plant.new({
  'name' => 'Arzaleas',
  'usp' => 'This plant can reduce formaldehyde in the air from sources such as plywood or foam insulation. They do best in cool areas.',
  'stock_quantity' => 10,
  'buying_cost' => 10,
  'selling_price' => 25,
  'url' => "/images/azaleas.jpg",
  'plant_type' => 'Aromatic',
  'nursery_id' => architectural_plants.id
  })

azaleas.save()

snake_plant = Plant.new({
  'name' => 'Snake Plant',
  'usp' => 'Ideal as a house plant as this plant can endure low amounts of light at long durations.  Identified by NASA as a top air purifying plant.',
  'stock_quantity' => 14,
  'buying_cost' => 13,
  'selling_price' => 30,
  'url' => "/images/dracaena.jpg",
  'plant_type' => 'Verigated Leaf',
  'nursery_id' => architectural_plants.id
  })

snake_plant.save()

holy_basil = Plant.new({
  'name' => 'Holy Basil',
  'usp' => 'Holy basil is considered a tonic for the body, mind and spirit.  High in anti-oxidants, it helps your body detox.  It has a spicy and refreshing fragrance and tiny colourful flowers - a very useful houseplant.',
  'stock_quantity' => 0,
  'buying_cost' => 5,
  'selling_price' => 15,
  'url' => "/images/holy_basil.jpg",
  'plant_type' => 'Aromatic',
  'nursery_id' => avondale.id
  })

holy_basil.save()

holy_basil.selling_price = 16
holy_basil.update()

nil
