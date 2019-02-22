require('sinatra')
require('sinatra/contrib/all')if development?

require_relative('./controllers/nursery_controller.rb')
require_relative('./controllers/plant_controller.rb')

get '/' do
  erb(:home)
end
