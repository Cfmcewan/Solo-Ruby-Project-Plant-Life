require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: "d5n684f0ucpfer", host: "ec2-107-21-99-237.compute-1.amazonaws.com", port: 5432, user:"pzlyepwxmutvxj", password: "757cf697e857c08609eaa2f8e31f32e3f86bb8e2934b80237d7ebff3fa66afbf"})
      db.prepare("query", sql)
      results = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return results
  end

end
