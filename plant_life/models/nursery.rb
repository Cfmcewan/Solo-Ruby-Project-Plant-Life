require_relative('./plant.rb')
require_relative('../db/sql_runner.rb')

class Nursery

attr_reader :id
attr_accessor :name, :location, :url,

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @location = options['location']
    @url = options['url']
  end
