require './db'
###############################################################
# RUN THIS FILE ONCE TO ADD THE QUESTIONS TO YOUR QUESTIONS TABLE
###############################################################

add_table("questions")

add_questions("The World population is more than 100 billion.", false)
add_questions("China is in Europe", false)
add_questions("George Washington is the first president", true)
add_questions("Mars has been invaded by humans", false)
add_questions("Leap year occurs every two years", false)
add_questions("The capital of USA is New York", false)
add_questions("Earth is the third planet in the solar system", true)
add_questions("1 month in the calendar has 32 days", false)
add_questions("Double negatives make a positive in math", true)
add_questions("The World ended in 2012", false)
