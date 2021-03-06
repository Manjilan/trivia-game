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
  connection.exec("CREATE TABLE IF NOT EXISTS #{questions} (id SERIAL PRIMARY KEY, question VARCHAR(255), answer VARCHAR(255))")
  # p "Table created: #{questions}"

end

def add_user_table(user)

    connection.exec("CREATE TABLE IF NOT EXISTS user_table2 (user_name VARCHAR(255), score VARCHAR(255) )")

    connection.exec("INSERT INTO user_table2 (user_name, score) VALUES ('#{user}','0')")

  end

def add_questions(question, answer)
  connection.exec("INSERT INTO questions (question, answer) VALUES ('#{question}','#{answer}')")
  #include the list of values you want to add as arguments or add id manually
  # p "User created: #{question}, #{answer} "
end

def display_question(id)

  connection.exec( "SELECT question FROM questions WHERE id = #{id}" ) do |result|
    result.each do |row|

      puts "Question: %s" % row.values_at('question')
    end
  end
end


def validate_answer?(id, user_input)

  connection.exec( "SELECT answer FROM questions WHERE id = #{id}" ) do |result|
    result.each do |row|
      actual_answer = "%s"% row.values_at('answer')

    #   puts "here is the actual answer in the db"
    #    puts actual_answer
    #  #  print actual_answer.class
    #  #
    #    puts "here is the user input"
    #   puts user_input
    #  # print user_input.class
    #
    #  puts "now I am comparing the user input to the actual answer"
    # puts user_input == actual_answer

      if user_input == actual_answer
        # puts "Answer is right!"
        # puts ""
        return true
      else
        # puts "Answer is wrong!"
        return false
      end
    end
  end

end

def update_score(score, user_name)

connection.exec("UPDATE user_table2 SET score = #{score} + 1 WHERE user_name = '#{user_name}';")
display_score(user_name)
#
end


def display_score(user_name)

   connection.exec( "SELECT * FROM user_table2 WHERE user_name = '#{user_name}' ") do |result|
 result.each do |row|
    score_in_db = "%s"% row.values_at('score')
    # puts "this is the current score in the db"
    # puts score_in_db
    # puts "%s|%d"% row.values_at('user_name', 'score')
    return score_in_db

    end
  end


end



# add_questions("The World population is more than 100 billion.", false)
# add_questions("China is in Europe", false)
# add_questions("George Washington is the first president", true)
# add_questions("Mars has been invaded by humans", false)
# add_questions("Leap year occurs every two years", false)
# add_questions("The capital of USA is New York", false)
# add_questions("Earth is the third planet in the solar system", true)
# add_questions("1 month in the calendar has 32 days", false)
# add_questions("Double negatives make a positive in math", true)
# add_questions("The World ended in 2012", false)
