require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: "d2dbiijho3rthk", host: "ec2-184-73-153-64.compute-1.amazonaws.com", port: 5432, user:"axhqtkmtszkynf", password: "ea989a3e27f9888a2c0cf9f72eb88e6856fea6435e7529b9086335f3291fcfdb"})
      db.prepare("query", sql)
      results = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return results
  end

end
