require_relative('../models/plant.rb')
require_relative('../models/nursery.rb')

get '/plants' do
  @plants = Plant.all
  erb(:"plants/index")
end