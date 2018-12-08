require_relative('./plant.rb')
require_relative('../db/sql_runner.rb')

class Nursery

attr_reader :id
attr_accessor :name, :location, :url

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @location = options['location']
    @url = options['url']
  end

  def save()
      sql = "INSERT INTO nurseries (name, location, url) VALUES ($1, $2, $3) RETURNING id"
      values = [@name, @location, @url]
      result = SqlRunner.run(sql, values).first
      @id = result['id'].to_i()
  end

  def update()
    sql = "UPDATE nurseries SET (name, location, url) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @location, @url, @id]
    SqlRunner.run(sql, values)
  end

end
