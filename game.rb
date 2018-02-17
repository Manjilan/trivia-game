# require './db'
#
# class Game
#   attr_accessor :score
#
#   def initialize
#     start_game
#     connection.exec( "SELECT * FROM questions" )
#     ask_question('#{id}')
#   end
#
#   def start_game
#     puts "Welcome and Get to ready to play"
#   end
#
#   def ask_question(id)
#     connection.exec( "SELECT question FROM questions WHERE id = #{id}" )
#     score=0
#     while score<5
#       display_question(id)
#     end
#   end
#
#   def user_input
#     input = gets.chomp.to_s
#     validate_answer(id, input)
#   end
#
#   def validate_answer(id, input, score)
#     connection.exec( "SELECT answer FROM questions WHERE id = #{id}" )
#     actual_answer = " %s " % row.values_at('answer')
#
#     if actual_answer == user_input
#       puts "You're correct. On to the next question"
#       score +=1
#
#     else
#       puts "Sorry you're wrong"
#     end
#
#
#     if id<5
#       display_question(id)
#
#     else
#
#       puts "Lets see your score"
#
#       if score >3
#         puts "Yay! that was great"
#
#       else
#         puts "Try Again Later"
#       end
#
#     end
#
#   end
#
# end
