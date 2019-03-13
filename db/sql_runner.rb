require ('pg')
class SqlRunner
  def self.run(sql, values = [])
    begin
      db = PG.connect({ dbname: 'music_organiser', host: 'localhost'})
      db.prepare("query", sql)
      db.exec_prepared("query", values)
    ensure
      db.close()
    end
  end
end
