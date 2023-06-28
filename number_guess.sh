#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


GAME() {
  NUM=$((RANDOM % 1000 + 1))
  # get username
  echo "Enter your username:"
  read USERNAME
  # get user_id
  USER_ID=$($PSQL "SELECT user_id FROM usernames WHERE username = '$USERNAME'")
  # check if new user
  if [[ -z $USER_ID ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO usernames(username) VALUES('$USERNAME')")
    USER_ID=$($PSQL "SELECT user_id FROM usernames WHERE username = '$USERNAME'")
  # return user history if not new
  else
    GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
    BEST_GUESS=$($PSQL "SELECT MIN(guess_num) FROM games WHERE user_id = $USER_ID")
    echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST_GUESS guesses."
  fi
  # ask for number guess
  echo "Guess the secret number between 1 and 1000:"
  read $GUESS
  # set up guess counter
  TRIES=1
  # make sure input is an integer
  while [[ ! $NUM == $GUESS ]] 
  do
    if [[ ! $NUM =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read GUESS
    else
      if [[ $GUESS < $NUM ]]
      then
        echo "It's higher than that, guess again:"
        read GUESS
        TRIES=$((TRIES+1))
      fi
      if [[ $GUESS > $NUM ]]
      then
        echo "It's lower than that, guess again:"
        read GUESS
        TRIES=$((TRIES+1))      
      fi
    fi
  done
  # congratulate player
  echo "You guessed it in $TRIES tries. The secret number was $NUM. Nice job!"
  # store game history
  INSERT_GAME_RESULTS=$($PSQL "INSERT INTO games(user_id, guess_num) VALUES($USER_ID, $TRIES)")
}

GAME
