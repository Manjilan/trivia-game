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

def display_question(id)

  connection.exec( "SELECT question FROM questions WHERE id = #{id}" ) do |result|
    result.each do |row|

      puts " question: %s" % row.values_at('question')
    end
  end
end


def validate_answer(id, user_input)

  connection.exec( "SELECT answer FROM questions WHERE id = #{id}" ) do |result|

    result.each do |row|
      actual_answer = " %s " % row.values_at('answer')

      # puts actual_answer
      # print actual_answer.class

      if user_input != actual_answer
        puts "Answer is wrong!"
        return false
      else
        return true
      end
    end
  end





end
