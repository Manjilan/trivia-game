
Team Members: Manjila, Emma, Srishti, Kingsley, Felix
Game: Trivia game with 5 questions

" --------------------------------------X--------------------------------------
"|                        Welcome and Get to ready to play                     |"
"|                           Answer with true or false.                        |"
" --------------------------------------X--------------------------------------"


   ____    _      _  _____    _    _   _ ____  
  / ___|  / \    | |/ / _ \  / \  | \ | / ___|
 | |  _  / _ \   | ' / | | |/ _ \ |  \| \___ \
 | |_| |/ ___ \  | . \ |_| / ___ \| |\  |___) |
  \____/_/   \_\ |_|\_\___/_/   \_\_| \_|____/



" --------------------------------------X--------------------------------------"

# Requirements

1. Player is comfortable working with in the terminal or ruby interpreter (IRB)

2. Player has ruby installed in their computer
  - https://www.ruby-lang.org/en/documentation/installation/#rbenv

3. Player has PostgreSQL installed on their computer
In terminal run :

gem install pg
**You may need to use sudo**

4. Player has PostgreSQL database named 'trivia' on their computer
In terminal run :

createdb trivia


5. Run the 'questions.rb' file once to populate the questions table ( irb -r questions.rb )

6. Now you are ready to play!

# How the game works

Step 1: Welcomes the player and asks for his/her user_name

Step 2: starts with the first questions

Step 3: will go to next question if the answer is correct or wrong,

Step 4: score is updated

Step 5: game will end once all questions have been answered

step 6: final score will be displayed


# Technologies used
Database for Questions created

2 tables created (questions and user)

Uses strings and booleans
