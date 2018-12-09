require_relative('../models/plant.rb')
require_relative('../models/nursery.rb')

get '/nurseries' do
  @nursery = Nursery.all
  erb(:"nurseries/index")
end

get '/nurseries/new' do
  @nurseries = Nursery.all
  erb(:"nurseries/new")
end

post '/nurseries' do
  Nursery.new(params).save
  redirect to '/nurseries'
end

get '/nurseries/:id' do
  @nursery = Nursery.find(params['id'])
  @plants = @nursery.plants()
  erb(:"nurseries/show")
end

get '/nurseries/:id/edit' do
  @nursery = Nursery.find(params[:id])
  @plants = Plant.all()
  erb(:"nurseries/edit")
end

post '/nurseries/:id' do
  @nursery = Nursery.new(params)
  @nursery.update()
  redirect("/nurseries/#{params[:id]}")
end


post '/nurseries/:id/delete' do
  nursery = Nursery.find(params['id'])
  nursery.delete
  redirect to '/nurseries'
end
