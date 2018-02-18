require './db'

  class Game
    attr_accessor :db_id, :random, :score

    def initialize
      @db_id = 1
      @score = 0
      add_table("questions")
      start_game

    end


    def start_game
      puts " -----------------------------X----------------------------"
      puts "|              Welcome and Get to ready to play            |"
      puts "|                 Answer with true or false.               |"
      puts " -----------------------------X----------------------------"
      print "Enter your name: "
      user_name = gets.chomp.to_s
      puts ""

      ask_question(@db_id, user_name, @score)
    end

    def ask_question(id, user_name, score)
      # puts id
      if id <= 5
        # puts "id is less than 5"
        # since id is less than 5 we are going to display the next question
        display_question(id)
        print "#{user_name}'s Answer: "
        user_input = gets.chomp.to_s


        validate = validate_answer?(id, user_input)

        # puts validate

        if validate == true
          id += 1
          score += 1
          ask_question(id, user_name, score)
          # puts "You are right."
          # end

        else
          puts " Try again!!!"
          id += 1
          ask_question(id, user_name, score)
          # return

        end
      else

          if score == 5
          puts "You win! Yay!"
          puts "Your score is #{score} out of 5"
        else
          puts "You lose! Awww!"
          puts "Your score is #{score} out of 5"
        end

          # return
      end
    end

      # this code needs to go to db.rb file
  end

  trivia = Game.new
