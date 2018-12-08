require_relative('../models/plant.rb')
require_relative('../models/nursery.rb')

get '/nurseries' do
  @nursery = Nursery.all
  erb(:"nurseries/index")
end

get '/nurseries/:id' do
  @nursery = Nursery.find(params['id'])
  @plants = @nursery.plants()
  erb(:"nurseries/show")
end
