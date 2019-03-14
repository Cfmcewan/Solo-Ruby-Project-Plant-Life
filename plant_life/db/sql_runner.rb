require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: "d831gqjk8r6lf3", host: "ec2-184-72-238-22.compute-1.amazonaws.com", port: 5432, user:"ugyqegximnfvwq", password: "4550722621e2afeff8a2d3ff33c41789d7383c001feebbf52ab8725de1c21f58"})
      db.prepare("query", sql)
      results = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return results
  end

end
