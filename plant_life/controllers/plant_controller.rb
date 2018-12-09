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

get '/plants/:id' do
  @plant = Plant.find(params['id'])
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

get '/plants/:id/stock_status' do
  plant = Plant.find(params['id'])
  @result = plant.stock_status
  erb(:"plants/stock_status")
end
