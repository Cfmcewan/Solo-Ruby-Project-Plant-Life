require_relative('./plant.rb')
require_relative('../db/sql_runner.rb')

class Nursery

attr_reader :id
attr_accessor :name, :location

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @location = options['location']

  end

  def save()
      sql = "INSERT INTO nurseries (name, location) VALUES ($1, $2) RETURNING id"
      values = [@name, @location]
      result = SqlRunner.run(sql, values).first
      @id = result['id'].to_i()
  end

  def update()
    sql = "UPDATE nurseries SET (name, location) = ($1, $2)
    WHERE id = $3"
    values = [@name, @location, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM nurseries"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM nurseries WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM nurseries"
    results = SqlRunner.run(sql)
    return results.map{|nursery| Nursery.new(nursery)}
  end

  def self.find(id)
    sql = "SELECT * FROM nurseries WHERE id = $1"
    values = [id]
    nursery = SqlRunner.run(sql, values)[0]
    return Nursery.new(nursery)
  end

  def plants()
    sql = "SELECT * FROM plants WHERE nursery_id = $1"
    values = [@id]
    plants = SqlRunner.run(sql, values)
    return plants.map{|plant| Plant.new(plant)}
  end



end
