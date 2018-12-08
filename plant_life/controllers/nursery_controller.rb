require_relative('../models/plant.rb')
require_relative('../models/nursery.rb')

get '/nurseries' do
  @nursery = Nursery.all
  erb(:"nurseries/index")
end
