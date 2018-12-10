require_relative('../models/plant.rb')
require_relative('../models/nursery.rb')

get '/plants' do
  @plants = Plant.all
  erb(:"plants/index")
end

get '/plants/new' do
  @nurseries = Nursery.all
  erb(:"plants/new")
end

post '/plants' do
  Plant.new(params).save
  redirect to '/plants'
end

get '/plants/plant_type' do
    @all_plant_types = Plant.all_plant_types
    erb(:"plants/plant_type")
end

get '/plants/:id' do
  @plant = Plant.find(params['id'])
  @stock = @plant.stock_status
  @mark_up = @plant.mark_up
  erb(:"plants/show")
end

get '/plants/:id/edit' do
  @nurseries = Nursery.all
  @plant = Plant.find(params['id'])
  erb(:"plants/edit")
end

post '/plants/:id' do
  plant = Plant.new(params)
  plant.update
  redirect to "/plants/#{params['id']}"
end

post '/plants/:id/delete' do
  plant = Plant.find(params['id'])
  plant.delete
  redirect to '/plants'
end


get '/plants/plant_type/:plant_type' do
  @plants = Plant.find_plant_type(params[:plant_type])
  erb(:"plants/plant_type/show")
end
