  require './db'

  class Game
    attr_accessor :db_id, :score

    def initialize
      @db_id = 1
      start_game
    end


    def start_game
      puts "Welcome and Get to ready to play"
      ask_question(@db_id)
    end

    def ask_question(id)
      # puts id
      if id <= 5
        # puts "id is less than 5"
        # since id is less than 5 we are going to display the next question
        display_question(id)
        user_input = gets.chomp.to_s


        validate = validate_answer(id, user_input)

        puts validate

        if validate != true
          id += 1
          ask_question(id)
          puts "You are right."
          # end

        else
          puts "You are wrong."

        end
      else
          puts "You win! Yay!"
          # return
      end
    end

      # this code needs to go to db.rb file


  end
