require "pg"

conn = PG.connect( 
  host: "db",
  dbname: 'shop',
  user: ENV["POSTGRES_USER"],
  password: ENV["POSTGRES_PASSWORD"])

conn.exec("SELECT * FROM shohin;" ) do |res|
  p res.to_a
end
