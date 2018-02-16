# Database Configuration
# ======================
# Documentation: https://deveiate.org/code/pg/PG.html
# Use this module to:
# - Connect to the adventure database
# - CRUD operations (CREATE, SELECT, UPDATE, DELETE)
#
require 'pg'

def connection
  PG::Connection.new(dbname: 'trivia')
end

def add_table(questions)
  connection.exec("CREATE TABLE #{questions} (id SERIAL PRIMARY KEY, question VARCHAR(255), answer VARCHAR(255))")
  p "Table created: #{questions}"

end

def add_questions(question, answer)
   connection.exec("INSERT INTO questions (question, answer) VALUES ('#{question}','#{answer}')")
 #include the list of values you want to add as arguments or add id manually
   p "User created: #{question}, #{answer} "
end
