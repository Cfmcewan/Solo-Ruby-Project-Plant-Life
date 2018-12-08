require_relative('./nursery.rb')
require_relative('../db/sql_runner.rb')

class Plant

  attr_reader :nursery_id, :id
  attr_accessor :name, :usp, :stock_quantity, :buying_cost, :selling_price, :url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @usp = options['usp']
    @stock_quantity = options['stock_quantity'].to_i()
    @buying_cost = options['buying_cost'].to_i()
    @selling_price = options['selling_price'].to_i()
    @url = options['url']
    @nursery_id = options['nursery_id'].to_i()

  end

  def save()
    sql = "INSERT INTO plants (name, usp, stock_quantity, buying_cost, selling_price, url, nursery_id) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@name, @usp, @stock_quantity, @buying_cost, @selling_price, @url, @nursery_id]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id']
  end

  
end