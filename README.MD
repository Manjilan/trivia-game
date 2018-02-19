
Team Members: Manjila, Emma, Srishti, Kingsley, Felix
Game: Trivia game with 5 questions

**Requirements**

1. Player is comfortable working with in the terminal or ruby interpreter (IRB)

2. Player has ruby installed in their computer
  - https://www.ruby-lang.org/en/documentation/installation/#rbenv

3. Player has PostgreSQL installed on their computer
In terminal run :

gem install pg

# You may need to use sudo

4. Player has PostgreSQL database named 'trivia' on their computer
In terminal run :

createdb library

5. Run the 'questions.rb' file once to populate the questions table ( irb -r questions.rb )

**How the game works**

Step 1: Welcomes the player and asks for his/her user_name

Step 2: starts with the first questions

Step 3: will go to next question if the answer is correct or wrong,

Step 4: score is updated

Step 5: game will end once all questions have been answered

step 6: final score will be displayed


**Technologies used**
Database for Questions created

2 tables created (questions and user)

Uses strings and booleans
