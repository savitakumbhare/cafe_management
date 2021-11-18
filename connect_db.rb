require "active_record"

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: "localhost",
    adapter: "postgresql",
    database: "cafe_db",
    user: "postgres",
    password: "changeme",
  )
  puts "DB Connected successfully"
end
