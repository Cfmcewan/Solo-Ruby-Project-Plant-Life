require('sinatra')
require('sinatra/contrib/all')

require_relative('./controllers/nursery_controller.rb')
require_relative('./controllers/plant_controller.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end
