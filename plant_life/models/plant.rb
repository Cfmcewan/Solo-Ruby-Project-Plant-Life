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

  def update()
    sql = "UPDATE plants SET (name, usp, stock_quantity, buying_cost, selling_price, url, nursery_id) = ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8"
    values = [@name, @usp, @stock_quantity, @buying_cost, @selling_price, @url, @nursery_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM plants"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM plants WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM plants"
    results = SqlRunner.run(sql)
    plants = results.map{|plant_hash| Plant.new(plant_hash)}
    return plants
  end

  def self.find(id)
    sql = "SELECT * FROM plants WHERE id = $1"
    values = [id]
    plant_hash = SqlRunner.run(sql, values).first()
    return Plant.new(plant_hash)
  end

  def nursery()
    sql = "SELECT * FROM nurseries WHERE id = $1"
    values = [@nursery_id]
    result = SqlRunner.run(sql, values)[0]
    return Nursery.new(result)
  end

  def stock_status()
      if @stock_quantity < 10
          return "Low stock"
      elsif @stock_quantity < 1
          return "Out of stock"
      else
          return "Good"
      end
    end

end
