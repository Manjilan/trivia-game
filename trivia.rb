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
    end
  end

  # this code needs to go to db.rb file

  def display_question(id)

    puts "we are in the display question function"
  #   connection.exec( "SELECT * FROM books" ) do |result|
  # puts "ID | Title"
  # result.each do |row|
  #   puts " %s | %s" % row.values_at('id', 'title')
  # end
  # end


  end



end
