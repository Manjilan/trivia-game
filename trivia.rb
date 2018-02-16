class Game
  attr_accessor :db_id

  def initialize
    @db_id = 0
    start_game
  end


  def start_game
    puts "Welcome and Get to ready to play"
    ask_question(db_id)
  end

  def ask_question(id)
    puts id
    if id <= 5
      puts "id is less than 5"
      # since id is less than 5 we are going to display the next question
      display_question(id)
      user_input = gets.chomp.to_sym

      validate = validate_answer(user_input)

      if validate = true
        id++
        ask_question(id)
      end

      else
        puts "You are wrong."
        return
      end
    end

    else
      puts "You win! Yay!"
      return
    end
  end

  # this code needs to go to db.rb file

  def display_question(id)

    puts "we are in the display question function"
  #   connection.exec( "SELECT question FROM questions WHERE id = #{id}" ) do |result|
  #     puts "ID | Title"
  #     result.each do |row|
  #       puts " %s | %s" % row.values_at('id', 'question')
  # end
  # end


  end
def validate_answer(id, user_input)
  connection.exec( "SELECT answer FROM questions WHERE id = #{id}" ) do |result|
      puts "ID | Title"
      result.each do |row|
        actual_answer = " %s " % row.values_at('answer')

        if user_input == actual_answer
            puts "Answer is correct!"
            return true
        end

      else
        return false
      end
  end
  end

end


end
