require_relative('../models/nursery.rb')
# require_relative('../models/plant.rb')

require('pry')

avondale = Nursery.new({
  'name' => 'Avondale',
  'location' => 'Coventry',
  'url' => "/images/avondale_logo.jpg"
  })

avondale.save()

binny_plants = Nursery.new({
  'name' => 'Binny Plants',
  'location' => 'West Lothian',
  'url' => "/images/binny_plants_logo.jpg"
  })

binny_plants.save()

architectural_plants = Nursery.new({
  'name' => 'Architectural Plants',
  'location' => 'West Sussex',
  'url' => "/images/architectural_plants_logo.jpg"
  })

architectural_plants.save()

avondale.name = 'The Avondale'
avondale.update()

aloe_vera = Plant.new({
  'name' => 'Aloe Vera',
  'usp' => 'Cleans benzine from the air',
  'stock_quantity' => 10,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/aloe_vera.jpg",
  'nursery_id' => architectural_plants.id
  })

aloe_vera.save()

greca_palm = Plant.new({
  'name' => 'Greca Palm',
  'usp' => 'Effective humidifier',
  'stock_quantity' => 12,
  'buying_cost' => 38,
  'selling_price' => 85,
  'url' => "/images/greca_palm.jpg",
  'nursery_id' => avondale.id
  })

greca_palm.save()

dracaena = Plant.new({
  'name' => 'Dracaena',
  'usp' => 'Emits high oxygen content',
  'stock_quantity' => 6,
  'buying_cost' => 12,
  'selling_price' => 35,
  'url' => "/images/dracaena.jpg",
  'nursery_id' => avondale.id
  })

dracaena.save()

english_ivy = Plant.new({
  'name' => 'English Ivy',
  'usp' => 'Reduces airbourne faecal matter particles',
  'stock_quantity' => 7,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/english_ivy.jpg",
  'nursery_id' => binny_plants.id
  })

english_ivy.save()

spider_plant = Plant.new({
  'name' => 'Spider Plant',
  'usp' => 'Combats carbon monoxide and xylene in the air',
  'stock_quantity' => 10,
  'buying_cost' => 3,
  'selling_price' => 8,
  'url' => "/images/spider_plant.jpg",
  'nursery_id' => binny_plants.id
  })

spider_plant.save()

weeping_fig = Plant.new({
  'name' => 'Weeping Fig',
  'usp' => 'Helps against emissions from new home furnishings',
  'stock_quantity' => 3,
  'buying_cost' => 24,
  'selling_price' => 50,
  'url' => "/images/weeping_fig.jpg",
  'nursery_id' => binny_plants.id
  })

weeping_fig.save()

azaleas = Plant.new({
  'name' => 'Arzaleas',
  'usp' => 'Reduces formaldehyde levels from plywood and foam',
  'stock_quantity' => 10,
  'buying_cost' => 10,
  'selling_price' => 25,
  'url' => "/images/azaleas.jpg",
  'nursery_id' => architectural_plants.id
  })

azaleas.save()

snake_plant = Plant.new({
  'name' => 'Snake Plant',
  'usp' => 'Identified by NASA as top air purifying plant',
  'stock_quantity' => 14,
  'buying_cost' => 13,
  'selling_price' => 30,
  'url' => "/images/dracaena.jpg",
  'nursery_id' => architectural_plants.id
  })

snake_plant.save()

holy_basil = Plant.new({
  'name' => 'Holy Basil',
  'usp' => 'Healing balm for body, mind and spirit',
  'stock_quantity' => 16,
  'buying_cost' => 5,
  'selling_price' => 15,
  'url' => "/images/holy_basil.jpg",
  'nursery_id' => avondale.id
  })

holy_basil.save()

binding.pry
nil
