#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

echo -e "\nEnter your username:"
read USERNAME

RETURNED_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

# Check if RETURNED_USER is not in the database
if [[  -z $RETURNED_USER  ]]
then
  # First Time
  INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # If not first time
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Get USER ID
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# Start Playing
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS


# if guess is not a number
if [[  ! $GUESS =~ ^[0-9]+$  ]]
then
  echo -e "\nThat is not an integer, guess again:"
  read GUESS
else
  TRIES=1
  while [  $GUESS -ne $SECRET_NUMBER  ]
  do
    TRIES=$(expr $TRIES + 1)

    # if guess is lower than secret number
    if [[  $GUESS -lt $SECRET_NUMBER  ]]
    then
      echo -e "\nIt's higher than that, guess again:\n"
    else
      # if guess is higher than secret number
      echo -e "\nIt's lower than that, guess again:\n"

    fi

    read GUESS
  done
fi

# Correct Guess
INSERTED_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID,$TRIES)")
echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!\n"
